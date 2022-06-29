
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

#include "string.h"

void _INIT ProgramInit(void)
{
	
}

void _CYCLIC ProgramCyclic(void)
{	
	// If E-Stop is released and we're ready for a reset, prompt for it. 
	if ((gSafety.in.allEStopsOk) && (!gSafety.in.safetyCircuitOk)) {
		blinkTimer.PT = 750;
		gLedCtrl.led[5] = blink ? keyringLED_COLOR_WHITE : keyringLED_COLOR_OFF;
	} else if (!gSafety.in.allEStopsOk) {
		blinkTimer.PT = 375;
		gLedCtrl.led[5] = blink ? keyringLED_COLOR_RED : keyringLED_COLOR_OFF;
	} else {
		gLedCtrl.led[5] = keyringLED_COLOR_GREEN;
	}
		
	// Timer to render blinking effect. 
	blinkTimer.IN = 1;
	if (blinkTimer.Q) {
		blinkTimer.IN = 0;
		blink = !blink;
	}
	TON(&blinkTimer);
	
	// Conditionally send the reset down to the safe plc. 
	gSafety.out.resetFromPlc = ((diReset) && (gSafety.in.allEStopsOk));		
}

void _EXIT ProgramExit(void)
{

}

