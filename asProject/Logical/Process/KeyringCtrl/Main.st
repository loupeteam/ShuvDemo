
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	gLedCtrl.led[0] := keyringLED_COLOR_RED;
	gLedCtrl.led[1] := keyringLED_COLOR_GREEN;

	gLedCtrl();
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

