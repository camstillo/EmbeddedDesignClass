/*
 * gsproj_app.c: test application for switches and rgbPWM
 * Boolean Board version
 *
 * This application uses Microblaze MCS to copy the slide switches to the
 * LEDs and the pushbuttons to control the intensity of one of the RGB LEDs
 *
 * switches are on GPI1
 * pushbuttons are on GPI2
 * LEDs are on GPO3
 * Control register for the rgbPWM generator is on GPO4
 *   GPO4[31]: Enable the PWM for the 3 RGB channels
 *   GPO4[30]: *RESERVED*
 *   GPO4[29:20]: RED duty cycle (0..1023)
 *   GPO4[19:10]: GREEN duty cycle (0..1023)
 *   GPO4[9:0]: BLUE duty cycle (0..1023)
 *
 *   This version is for the Boolean Board
 *   	pushbutton mapping: {btn3, btn2, btn1, btn0}
 */
#include <stdio.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xiomodule.h"
#include "xparameters.h"
#include "microblaze_sleep.h"

/********************** Constants, typedefs, and enums ***************/

//#define _DEBUG  1		// uncomment to enable debug output

#define NBTNS 	4		// number of buttons
#define MAXDC	1023	// max duty cycle
#define DCINCR	63		// ~15 steps for each duty cycle

/********************** Global variables ***************/
// shared between main and helper functions
u16 pwmRedDC = 0, pwmGreenDC = 0, pwmBlueDC = 0;	// 10 bit duty cycle registers for RGB LED PWM controller
bool pwmEnable = true;								// true to enable PWM output

// helper function prototypes
u32 handleRGB(u32 btns, u32 sw);
u32 buildPWMCtrlReg(bool enable, u16 RedDC, u16 GreenDC, u16 BlueDC);

int main() {
	XIOModule IOModule;
	u32 switches, prev_switches = 0xFFFF;
	u32 btns;
	u32 PWMCntrlReg;

    init_platform();
    xil_printf("\nECE 544 Microblaze MCS/Nexys A7 Getting Started Project\n\r");

    XIOModule_Initialize(&IOModule, XPAR_IOMODULE_0_DEVICE_ID);
    while(1){
    	switches = XIOModule_DiscreteRead(&IOModule, 1);
    	btns = XIOModule_DiscreteRead(&IOModule, 2);
    	PWMCntrlReg = handleRGB(btns, switches);
    	XIOModule_DiscreteWrite(&IOModule, 4, PWMCntrlReg);
    	if (prev_switches != switches) {
			XIOModule_DiscreteWrite(&IOModule, 3, switches);
    		xil_printf("New switches: 0x%04X\n\r", switches);
    		prev_switches = switches;
    	}
    	usleep(50000);
    }

    cleanup_platform();
    return 0;
}


/*********** HELPER FUNCTIONS *************/

/**
 * handleRGB() - processes button presses and switches to control RGB LED
 *
 * @brief looks for rising and falling edges on the pushbuttons and updates
 * the PWM duty cycle and PWM enable variables.  Returns the updated value
 * of the PWM control register which can be sent to GPO4 in the I/O module.
 * The previous button values are used to detect edges and are static in this
 * function.  Reads/modifies the global PWM duty cycle registers
 *
 * @param btns	button register from GPI2.
 *
 * @param sw switches register from GPI1
 *
 * @return		the PWM Control register value
 *
 * @note:  pushbutton mapping: {btn3, btn2, btn1, btn0}
 * 			switches[15] = disable PWM, btn0 = Blue, btn1 = Green, btnD = Red, btn3 = Set PWMs to 0,
 */
u32 handleRGB(u32 btns, u32 sw) {
	static u32 prevBtns;		// previous value of button register
	static bool isInitialized;	// true if the function has run at least once

	// initialize the static variables the first time the function is called
	if (!isInitialized) {
		prevBtns = btns ^ 0x0000001F;	// invert btns to get everything started
		isInitialized = true;
	}

	// XOR prev and current buttons.  If any of the bits are 1
	// at least one of the buttons has changed state since the last
	// time the function was called
	if ((prevBtns ^ btns) != 0) {
		// one or more buttons have changed state
		u32 btnMsk = 0x00000001;
		for (int i = 0; i < NBTNS; i++) {
			// look at the buttons one at a time to see if  there was a rising
			// edge on the button.  If so, increment the affected duty cycles or invert the pwmEnable
			if (btns & (btnMsk << i)) {
				// rising edge on btn[i]
				switch (i) {
					// iterate through the buttons and modify global PWM duty cycle variables
					case 0:	// btn0 - Green duty cycle
							pwmGreenDC = ((pwmGreenDC + DCINCR) <= MAXDC) ? pwmGreenDC + DCINCR : 0;
							break;

					case 1:	// btn1 = Blue duty cycle
							pwmBlueDC = ((pwmBlueDC + DCINCR) <= MAXDC) ? pwmBlueDC + DCINCR : 0;
							break;

					case 2:	// btn2 - Red duty cycle
							pwmRedDC = ((pwmRedDC + DCINCR) <= MAXDC) ? pwmRedDC + DCINCR : 0;
							break;

					case 3: // btn3 - Set all duty cycles to 0
							pwmGreenDC = 0;
							pwmBlueDC = 0;
							pwmRedDC = 0;
							break;

					default: // shouldn't get here
							break;
				}
			}
		}

		xil_printf("RedDC= %d%% (%3d), GreenDC= %d%% (%3d), BlueDC= %d%% (%3d) pwmEnable=%s\r\n",
			(pwmRedDC * 100 / MAXDC), pwmRedDC,
			(pwmGreenDC * 100 / MAXDC), pwmGreenDC,
			(pwmBlueDC*100 / MAXDC), pwmBlueDC,
			(pwmEnable ? "ON" : "OFF")
		);
		prevBtns = btns;
	}

	// enable/disable PWM output using sw[15]
	pwmEnable = sw & 0x8000;

	u32 ctlreg = buildPWMCtrlReg(pwmEnable, pwmRedDC, pwmGreenDC, pwmBlueDC);
	return ctlreg;
}



/**
 * buildPWMCtrlReg() - returns a PWM ControlReg value
 *
 * @brief combines the enable and PWM duty cycle bits to create
 * a value that can be loaded into the PWM Control register
 *
 * @param enable	PWM enable.  True to enable the PWM outputs
 * @param RedDc		Duty cycle for RED pwm.  Range is 0..1023
 * @param GreenDc	Duty cycle for GREEN pwm.  Range is 0..1023
 * @param Blue		Duty cycle for BLUE pwm.  Range is 0..1023
 *
 * @return			A PWM Control register value
 */
u32 buildPWMCtrlReg(bool enable, u16 RedDC, u16 GreenDC, u16 BlueDC) {
	u32 cntlreg;

	// initialize the value depending on whether PWM is enabled
	// enable is Control register[31]
	cntlreg = (enable) ? 0x80000000 : 0x0000000;

	// add the duty cycles
	cntlreg |=	((BlueDC & 0x03FF)  << 0)  |
				((GreenDC & 0x03FF) << 10) |
				((RedDC & 0x03FF)   << 20);
	return cntlreg;
}
