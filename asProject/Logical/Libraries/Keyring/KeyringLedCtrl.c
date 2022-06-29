
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Keyring.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void KeyringLedCtrl(struct KeyringLedCtrl* inst)
{
	int i = 0;
	
	// Support multiple modes. 
	switch(inst->mode){
		// Create a rotating colorful path.
		case keyringLED_MODE_ROTATE:
			inst->internal.timer.IN = 1;
			inst->internal.timer.PT = 150;
			if (inst->internal.timer.Q) {
				inst->internal.timer.IN = 0;
				inst->internal.counter++;
				if (inst->internal.counter > 11) {
					inst->internal.counter = 0;
				}
			}		
			switch(inst->internal.counter) {
				case 0: inst->internal.led[0] = inst->color; break;
				case 1: inst->internal.led[1] = inst->color; break;
				case 2: inst->internal.led[2] = inst->color; break;
				case 3: inst->internal.led[5] = inst->color; break;
				case 4: inst->internal.led[4] = inst->color; break;
				case 5: inst->internal.led[3] = inst->color; break;
				case 6: inst->internal.led[0] = keyringLED_COLOR_OFF; break;
				case 7: inst->internal.led[1] = keyringLED_COLOR_OFF; break;
				case 8: inst->internal.led[2] = keyringLED_COLOR_OFF; break;
				case 9: inst->internal.led[5] = keyringLED_COLOR_OFF; break;
				case 10: inst->internal.led[4] = keyringLED_COLOR_OFF; break;
				case 11: inst->internal.led[3] = keyringLED_COLOR_OFF; break;
			}
			break; 
		
		// Just pass commands through directly. 
		case keyringLED_MODE_DIRECT:
			inst->internal.counter = 0;
			for (i = 0; i <= 5; i++) {
				inst->internal.led[i] = inst->led[i];
			}
			break;
	}
	
	TON(&inst->internal.timer);	
	
	// Perform basic LED control. 
	for (i = 0; i <= 5; i++) {
		inst->doLedMap[i*4+0] = 0;
		inst->doLedMap[i*4+1] = 0;
		inst->doLedMap[i*4+2] = 0;
		inst->doLedMap[i*4+3] = 0;
		switch(inst->internal.led[i]) {
			case keyringLED_COLOR_RED: 
				inst->doLedMap[i*4+0] = 1; 
				break;
			case keyringLED_COLOR_YELLOW: 
				inst->doLedMap[i*4+1] = 1; 
				break;
			case keyringLED_COLOR_GREEN: 
				inst->doLedMap[i*4+2] = 1; 
				break;
			case keyringLED_COLOR_WHITE: 
				inst->doLedMap[i*4+3] = 1; 
				break;
		}
	}
}
