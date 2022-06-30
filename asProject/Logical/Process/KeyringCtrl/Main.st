
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	IF (blink) THEN
		gLedCtrl.led[0] := keyringLED_COLOR_GREEN;
		gLedCtrl.led[1] := keyringLED_COLOR_GREEN;
		gLedCtrl.led[3] := keyringLED_COLOR_GREEN;
		gLedCtrl.led[4] := keyringLED_COLOR_GREEN;
	ELSE 
		gLedCtrl.led[0] := keyringLED_COLOR_OFF;
		gLedCtrl.led[1] := keyringLED_COLOR_OFF;
		gLedCtrl.led[3] := keyringLED_COLOR_OFF;
		gLedCtrl.led[4] := keyringLED_COLOR_OFF;
	END_IF

	gLedCtrl();
	
	// Blink timer utility. 
	blinkTimer.IN := TRUE;
	blinkTimer.PT := T#1000ms;
	IF (blinkTimer.Q) THEN
		blinkTimer.IN := FALSE;
		blink := NOT blink;
	END_IF
	blinkTimer();
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

