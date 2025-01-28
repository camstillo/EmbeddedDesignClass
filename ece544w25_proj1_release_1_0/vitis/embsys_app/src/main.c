/*      EMBEDDED SYSTEM DESIGN WITH FPGAS ECE 544
 *      Project 1 - Outputting RGB LEDs
 *      By Cameron Castillo                 ccastill@pdx.edu
 *      Based on code from Roy Kravitz      roy.kravitz@pdx.edu
 *
 *      @brief this code acts upon a microblaze soft-processor to drive
 *      a set of AXI-based peripherals. These peripherals drive 16 green 
 *      LEDs above a set of switches to indicate their state; one RGB 
 *      LED whose PWM signal is measured; another RGB LED driven off
 *      the measured PWM value of RGBLED1; and eight 7-segment displays. 
 *      A fixed interval timer drives an interrupt which determines how 
 *      when a set of pushbuttons are read. If the interrupt is triggered 
 *      for given buttons (U=G_inc, R=B_inc, D=R_inc, L=clr_pwm) the pwm 
 *      value is incremented. All of these peripherals are mapped in memory 
 *      in the platform, and can be accessed by simply writing registers in
 *      the microblaze. 
 */
#include <stdio.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xiomodule.h"
#include "xparameters.h"
//#include "microblaze_sleep.h"
#include "sleep.h"

/********************** Constants, typedefs, and enums ***************/

//#define _DEBUG  1		// uncomment to enable debug output

#define NBTNS 	5		// number of buttons
#define MAXDC	1023	// max duty cycle
#define DCINCR	63		// ~15 steps for each duty cycle