
TYPE
	keyringLED_MODE_enum : 
		(
		keyringLED_MODE_DIRECT,
		keyringLED_MODE_ROTATE
		);
	keyringLED_COLOR_enum : 
		(
		keyringLED_COLOR_OFF := 0,
		keyringLED_COLOR_RED,
		keyringLED_COLOR_YELLOW,
		keyringLED_COLOR_GREEN,
		keyringLED_COLOR_WHITE
		);
	KeyringLedInternal_typ : 	STRUCT 
		counter : USINT;
		timer : TON;
		led : ARRAY[0..5]OF keyringLED_COLOR_enum;
	END_STRUCT;
END_TYPE
