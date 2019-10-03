/*
 * Copyright 2016-2019 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file    MKL25Z128xxx4_Project_LedBlink.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "MKL25Z4.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */

/* TODO: insert other definitions and declarations here. */

/*
 * @brief   Application entry point.
 */

void delay(volatile int32_t number)
		{
			int multiplier = 4000;
			int delay = number*multiplier;
			while (delay!=0)
					{
						__asm volatile ("nop");
						delay--;
					}
		}


void print_pc_on(int LED_no, int delay_total)
			{
				if (LED_no == 0)
					{
						printf("\n The Red LED is ON	%d ms",delay_total);
					}
				if (LED_no == 1)
					{
						printf("\n The Green LED is ON	%d ms",delay_total);
					}
				if (LED_no == 2)
					{
						printf("\n The Blue LED is ON	%d ms",delay_total);
					}
			}

void print_pc_off(int LED_no, int delay_total)
			{
				if (LED_no == 0)
					{
						printf("\n The Red LED is OFF	%d ms",delay_total);
					}
				if (LED_no == 1)
					{
						printf("\n The Green LED is OFF	%d ms",delay_total);
					}
				if (LED_no == 2)
					{
						printf("\n The Blue LED is OFF	%d ms",delay_total);
					}
			}

void print_frb_on(int LED_no, int delay_total,int cumulative)
			{
				if (LED_no == 0)
					{
						PRINTF("\n The Red LED is ON	%d ms",cumulative);
						delay(delay_total);
						PRINTF("\n The Red LED is OFF	%d ms", cumulative+ delay_total);
					}
				if (LED_no == 1)
					{
						PRINTF("\n The Green LED is ON	%d ms",cumulative);
						delay(delay_total);
						PRINTF("\n The Green LED is OFF	%d ms", cumulative+ delay_total);
					}
				if (LED_no == 2)
					{
						PRINTF("\n The Blue LED is ON	%d ms",cumulative);
						delay(delay_total);
						PRINTF("\n The Blue LED is OFF	%d ms",cumulative+ delay_total);
					}
			}

/*
void print_frb_off(int LED_no, int delay_total)
			{
				if (LED_no == 0)
					{
						PRINTF("\n The Red LED is OFF	%d ms",delay_total);
					}
				if (LED_no == 1)
					{
						PRINTF("\n The Green LED is OFF	%d ms",delay_total);
					}
				if (LED_no == 2)
					{
						PRINTF("\n The Blue LED is OFF	%d ms",delay_total);
					}
			}
*/





void blink(int LED_no, int delay_counter)
			{


				if (LED_no==0) //LED is Red
					{
						LED_RED_ON();
						delay(delay_counter);
						LED_RED_OFF();
					}

				if (LED_no==1) //LED is Green
					{
						LED_GREEN_ON();
						delay(delay_counter);
						LED_GREEN_OFF();
					}

				if (LED_no==2) //LED is Blue
						{
							LED_BLUE_ON();
							delay(delay_counter);
							LED_BLUE_OFF();
						}
			}



int main(void) {

  	/* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
  	/* Init FSL debug console. */
    BOARD_InitDebugConsole();

    /* Force the counter to be placed into memory. */
    volatile static int i = 0 ;
    volatile static int j = 0 ;
    volatile static int mode = 0;
    volatile static int LED_no = 0 ;

    int Delay_Arr[20]={3000,1000,2000,600,1000,400,1000,200,500,100,500,100,500,100,1000,200,1000,400,2000,600};





    //Initialize the LEDs and GPIO
    LED_RED_INIT(1);
	LED_GREEN_INIT(1);
	LED_BLUE_INIT(1);

    PRINTF("Hello World\n");


//////////////////////Declarations for the different run modes///////////////
#ifdef pc_run
    mode = 0;
    PRINTF("\n PC Run mode")
#endif

#ifdef pc_debug
    mode = 1;
    PRINTF("\n PC Debug mode")
#endif

#ifdef frb_run
    mode = 2;
    PRINTF("\n Freedom Board Run mode")
#endif

#ifdef frb_debug
    mode = 3;
    PRINTF("\n Freedom Board debug mode")
#endif




    int delay_count = 0;
    /* Enter an infinite loop, just incrementing a counter. */
    int cumulative_delay = 0;
    int cumulative_count = 0;




////////////////////////////////////Freedom Board run Mode//////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
if (mode == 2)
{

   for (i=1;i<=18;i++)
   {
		   if (i == 20)
			   {
				   cumulative_count++;
			   }

		   if ( cumulative_count == 3)
			   {
				   break;
			   }

        	switch (i)
        	{
        	    case 1: LED_no = 0;   // R on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	        break;
        	    case 2: delay(Delay_Arr[delay_count]);   //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 3: LED_no = 0;       					//R on
	    				blink(LED_no,Delay_Arr[delay_count]);
	    				delay_count++;
	    				cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 4: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 5:  LED_no = 0;                       //R on
	    				 blink(LED_no,Delay_Arr[delay_count]);
	    				 delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 6: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 7:  LED_no = 1;                        //G on
	    				 blink(LED_no,Delay_Arr[delay_count]);delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 8: delay(Delay_Arr[delay_count]);
        	    		delay_count++;   //G off
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 9: LED_no = 1;                             //G on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 10: delay(Delay_Arr[delay_count]);       //G off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 11: LED_no = 1;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //G on
				 	 	 delay_count++;
				 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 12: delay(Delay_Arr[delay_count]);          //G off
        	    			delay_count++;
        	    			cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 13: LED_no = 2;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //B on
				 	 	 	 delay_count++;
				 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 14: delay(Delay_Arr[delay_count]);			//B off
        	    		delay_count++;
        	    	break;
        	    	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    case 15: LED_no = 2;                           //B on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 delay_count++;
		 	 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 16: delay(Delay_Arr[delay_count]);		//B off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 17: LED_no = 2;                         //Blue on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 	 delay_count++;
		 	 	 	 	 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
		 	 	 	 break;
        	    case 18: delay(Delay_Arr[delay_count]);		//Blue off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;


        	}   ////end of switch

        	if (i==18)
				{
					i=1;
				}

        	if (delay_count == 19)
				{
					delay_count = 0;
				}




        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        //__asm volatile ("nop");
    }    //end of for

} ///end of mode 2
/////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////PC run Mode//////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
if (mode == 0)
{

   for (i=1;i<=18;i++)
   {
		   if (i == 20)
			   {
				   cumulative_count++;
			   }

		   if ( cumulative_count == 3)
			   {
				   break;
			   }

        	switch (i)
        	{
        	    case 1: LED_no = 0;   // R on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	        break;
        	    case 2: delay(Delay_Arr[delay_count]);   //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 3: LED_no = 0;       					//R on
	    				blink(LED_no,Delay_Arr[delay_count]);
	    				delay_count++;
	    				cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 4: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 5:  LED_no = 0;                       //R on
	    				 blink(LED_no,Delay_Arr[delay_count]);
	    				 delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 6: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 7:  LED_no = 1;                        //G on
	    				 blink(LED_no,Delay_Arr[delay_count]);delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 8: delay(Delay_Arr[delay_count]);
        	    		delay_count++;   //G off
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 9: LED_no = 1;                             //G on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 10: delay(Delay_Arr[delay_count]);       //G off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 11: LED_no = 1;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //G on
				 	 	 delay_count++;
				 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 12: delay(Delay_Arr[delay_count]);          //G off
        	    			delay_count++;
        	    			cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 13: LED_no = 2;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //B on
				 	 	 	 delay_count++;
				 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 14: delay(Delay_Arr[delay_count]);			//B off
        	    		delay_count++;
        	    	break;
        	    	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    case 15: LED_no = 2;                           //B on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 delay_count++;
		 	 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 16: delay(Delay_Arr[delay_count]);		//B off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 17: LED_no = 2;                         //Blue on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 	 delay_count++;
		 	 	 	 	 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
		 	 	 	 break;
        	    case 18: delay(Delay_Arr[delay_count]);		//Blue off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;


        	}   ////end of switch

        	if (i==18)
				{
					i=1;
				}

        	if (delay_count == 19)
				{
					delay_count = 0;
				}




        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        //__asm volatile ("nop");
    }    //end of for

} ///end of mode 0
/////////////////////////////////////////////////////////////////////////////////






////////////////////////////////////PC Debug Mode//////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
if (mode == 1)
{

   for (i=1;i<=18;i++)
   {
		   if (i == 20)
			   {
				   cumulative_count++;
			   }

		   if ( cumulative_count == 3)
			   {
				   break;
			   }

        	switch (i)
        	{
        	    case 1: LED_no = 0;   // R on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	        break;
        	    case 2: delay(Delay_Arr[delay_count]);   //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 3: LED_no = 0;       					//R on
	    				blink(LED_no,Delay_Arr[delay_count]);
	    				delay_count++;
	    				cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 4: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 5:  LED_no = 0;                       //R on
	    				 blink(LED_no,Delay_Arr[delay_count]);
	    				 delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 6: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 7:  LED_no = 1;                        //G on
	    				 blink(LED_no,Delay_Arr[delay_count]);delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 8: delay(Delay_Arr[delay_count]);
        	    		delay_count++;   //G off
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 9: LED_no = 1;                             //G on
        	    		blink(LED_no,Delay_Arr[delay_count]);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 10: delay(Delay_Arr[delay_count]);       //G off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 11: LED_no = 1;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //G on
				 	 	 delay_count++;
				 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 12: delay(Delay_Arr[delay_count]);          //G off
        	    			delay_count++;
        	    			cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 13: LED_no = 2;
				 	 	 blink(LED_no,Delay_Arr[delay_count]);   //B on
				 	 	 	 delay_count++;
				 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 14: delay(Delay_Arr[delay_count]);			//B off
        	    		delay_count++;
        	    	break;
        	    	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    case 15: LED_no = 2;                           //B on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 delay_count++;
		 	 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 16: delay(Delay_Arr[delay_count]);		//B off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 17: LED_no = 2;                         //Blue on
		 	 	 	 	 blink(LED_no,Delay_Arr[delay_count]);
		 	 	 	 	 	 delay_count++;
		 	 	 	 	 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
		 	 	 	 break;
        	    case 18: delay(Delay_Arr[delay_count]);		//Blue off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;


        	}   ////end of switch

        	if (i==18)
				{
					i=1;
				}

        	if (delay_count == 19)
				{
					delay_count = 0;
				}




        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        //__asm volatile ("nop");
    }    //end of for

} ///end of mode 1
/////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////Freedom Board debug Mode//////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
if (mode == 3)
{

   for (i=1;i<=18;i++)
   {
		   if (i == 20)
			   {
				   cumulative_count++;
			   }

		   if ( cumulative_count == 3)
			   {
				   break;
			   }

        	switch (i)
        	{
        	    case 1: LED_no = 0;   // R on
        	    		print_frb_on(LED_no, Delay_Arr[delay_count],cumulative_delay);
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	        break;
        	    case 2: delay(Delay_Arr[delay_count]);   //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 3: LED_no = 0;       					//R on
        	    		print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);
	    				delay_count++;
	    				cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 4: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 5:  LED_no = 0;                       //R on
        	    		 print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);
	    				 delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 6: delay(Delay_Arr[delay_count]);     //R off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 7:  LED_no = 1;                        //G on
        	    		print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);
        	    		;delay_count++;
	    				 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 8: delay(Delay_Arr[delay_count]);
        	    		delay_count++;   //G off
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 9: LED_no = 1;                             //G on
        	    		print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);;
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 10: delay(Delay_Arr[delay_count]);       //G off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 11: LED_no = 1;
        	    		print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);   //G on
				 	 	 delay_count++;
				 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 12: delay(Delay_Arr[delay_count]);          //G off
        	    			delay_count++;
        	    			cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 13: LED_no = 2;
        	    		 print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);   //B on
				 	 	 	 delay_count++;
				 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 14: delay(Delay_Arr[delay_count]);			//B off
        	    		delay_count++;
        	    	break;
        	    	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    case 15: LED_no = 2;                           //B on
        	    		 print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);
		 	 	 	 	 delay_count++;
		 	 	 	 	cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;
        	    case 16: delay(Delay_Arr[delay_count]);		//B off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;

        	    case 17: LED_no = 2;                         //Blue on
        	    		print_frb_on(LED_no,Delay_Arr[delay_count],cumulative_delay);
		 	 	 	 	delay_count++;
		 	 	 	 	 cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
		 	 	 	 break;
        	    case 18: delay(Delay_Arr[delay_count]);		//Blue off
        	    		delay_count++;
        	    		cumulative_delay = cumulative_delay + Delay_Arr[delay_count];
        	    	break;


        	}   ////end of switch

        	if (i==18)
				{
					i=1;
				}

        	if (delay_count == 19)
				{
					delay_count = 0;
				}




        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        //__asm volatile ("nop");
    }    //end of for

} ///end of mode 3
/////////////////////////////////////////////////////////////////////////////////







    return 0 ;
}
