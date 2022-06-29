
TYPE
	Safety_typ : 	STRUCT 
		in : SafetyIn_typ;
		out : SafetyOut_typ;
	END_STRUCT;
	SafetyIn_typ : 	STRUCT 
		safeApplicationRunning : BOOL;
		safePlcOk : BOOL;
		allEStopsOk : BOOL;
		safetyCircuitOk : BOOL;
	END_STRUCT;
	SafetyOut_typ : 	STRUCT 
		resetFromPlc : BOOL;
	END_STRUCT;
END_TYPE
