
{REDUND_ERROR} FUNCTION_BLOCK KeyringLedCtrl (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		mode : keyringLED_MODE_enum;
		color : keyringLED_COLOR_enum;
		led : {REDUND_UNREPLICABLE} ARRAY[0..5] OF keyringLED_COLOR_enum;
	END_VAR
	VAR_OUTPUT
		doLedMap : ARRAY[0..23] OF BOOL;
	END_VAR
	VAR
		internal : KeyringLedInternal_typ;
	END_VAR
END_FUNCTION_BLOCK
