/*
 * IR Remote.c
 *
 * Created: 6/7/2017 2:48:02 PM
 * Author : Dana_N
 *
 * Simple remote app
 *
 * Based on NEC Protocol
 * 26.3us or 38kHz carrier
 *
 * License: Creative Commons CC
 *
 * For Kaitlyn
 * <3
 */ 

#include <avr/io.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

#define F_CPU 1000000UL // int. osc. at 1mhz
#include <util/delay.h>

#define BitTime 434

int main(void)
{
	//Set PB1 port to output
	DDRB = 0x02;
	
	//Set all of D to input
	DDRD = 0x00;	
	//Set all as pull up *IMPORTANT
	PORTD = 0xFF;
	
	/* Declaration of IR codes */
	
	unsigned long IRPowerDown = 0b01100001101000000000011011111001;
	unsigned long IRPowerUp = 0b01100001101000001000011001111001;
	unsigned long IRVolumeUp = 0b01100001101000000011000011001111;
	unsigned long IRVolumeDown = 0b01100001101000001011000001001111;
	unsigned long IRInput = 0b01100001101000000000101011110101;
	unsigned long IRMute = 0b01100001101000000111000010001111;
	
	/*Variable Declaration*/
	
	unsigned int IRDuration;
	unsigned long command;
	int x=0;
	int y=0;
	volatile unsigned long int incre = 0;

	//Carrier signal, encoded later on
	void carrier(unsigned int IRDuration)
	{
		int i;
		for (int i=0; i < (IRDuration/26) ; i++)
		{
			PORTB = 0x02;
			_delay_us(13);
			PORTB &= ~0x02;
			_delay_us(13);
		}
	}

	//Function to put remote into sleep mode
	void sleepytime()
	{
		EICRA = _BV(ISC01);
        EIMSK = _BV(INT0);             
		set_sleep_mode(SLEEP_MODE_PWR_DOWN);
		cli();
		sleep_enable();
		sei();
		sleep_cpu();
		sleep_disable();
	}
	
	//Encodes and sends IR signal based on binary
	void encode(unsigned long command)
	{
		//Leading pulse signal
		int i;
		carrier(6750);
		_delay_us(4520);
		
		for (i=0; i<32; i++)
		{
			carrier(BitTime);
			if (command & 0x80000000)
				_delay_us(3*(BitTime+90));
			else
				_delay_us(BitTime+81);
			command <<= 1;
		}
		carrier(BitTime);
		_delay_ms(44);
		carrier(6750);
		_delay_us(2220);
		carrier(BitTime);
		_delay_ms(200);
	}
	
	//Set up Timer for counting time awake
	
	while(1)
	{    
		//unsigned long y = PIND;
		switch(PIND) //when certain button is pressed
		{
			case 0xFE:
				if (x == 1)
				{
					encode(IRPowerDown);
					x = 0;
				}
				else
				{
					encode(IRPowerUp);
					x = 1;
				}
				incre = 0;
				break;
			case 0xEF:
				encode(IRVolumeUp);
				incre = 0;
				break;
			case 0xFB:
				encode(IRInput);
				incre = 0;
				_delay_ms(200);
				break;
			case 0x7D:
				encode(IRVolumeDown);
				incre = 0;
				break;
			case 0xF7:
				encode(IRMute);
				incre = 0;
				break;
			default:
				incre++;
				break;
		}
		if (incre >= 1000000) //lazy way to time sleep operation
		{
			sleepytime();
			incre = 0;
		}
	}
	    
}

ISR(INT0_vect)
    {
	    EIMSK = 0;
    }
