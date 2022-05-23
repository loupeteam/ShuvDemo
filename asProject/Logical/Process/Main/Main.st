
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	timer.IN := TRUE;
	timer.PT := T#50ms;
	IF (timer.Q) THEN
		timer.IN := FALSE;
		counter := counter + 1;
		IF (counter > 12) THEN
			counter := 0;
		END_IF
	END_IF
	timer();

	FOR i := 0 TO 11 DO
		doLED[i] := (counter = i);
	END_FOR
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

