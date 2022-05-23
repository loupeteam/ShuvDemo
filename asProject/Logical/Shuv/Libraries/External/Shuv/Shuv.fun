
FUNCTION_BLOCK ShuvGetVersionInfo
	VAR_INPUT
		get : BOOL;
		version : STRING[200];
		deviceName : STRING[200];
		parameters : ShuvGetVersionInfoParams_typ;
		mqttLink : REFERENCE TO IoTMqttComIdentType;
	END_VAR
	VAR_OUTPUT
		busy : BOOL;
		error : BOOL;
		done : BOOL;
		info : ShuvVersionInfo_typ;
	END_VAR
	VAR
		internal : ShuvGetVersionInternal_typ;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION ShuvInit : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_IN_OUT
		shuv : Shuv_typ;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION ShuvCyclic : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_IN_OUT
		shuv : Shuv_typ;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION Diagnose : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_IN_OUT
		diag : Diagnose_typ;
	END_VAR
END_FUNCTION

FUNCTION_BLOCK ShuvRegister
	VAR_INPUT
		provision : BOOL;
		mqttLink : REFERENCE TO IoTMqttComIdentType;
		provisionTemplate : STRING[120];
		certOwnershipToken : UDINT;
		serialNumber : UDINT;
	END_VAR
	VAR_OUTPUT
		thingName : STRING[80];
		busy : BOOL;
		error : BOOL;
		errorId : DINT;
		done : BOOL;
	END_VAR
	VAR
		internal : ShuvRegisterInternal_typ;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK ShuvGetCredentials
	VAR_INPUT
		mqttLink : REFERENCE TO IoTMqttComIdentType;
		getCredentials : BOOL;
		saveCredentials : BOOL;
		deleteCredentials : BOOL;
		credentialInfo : ShuvInCredentials_typ;
	END_VAR
	VAR_OUTPUT
		certs : ShuvCerts_typ;
		busy : BOOL;
		error : BOOL;
		done : BOOL;
		errorId : DINT;
	END_VAR
	VAR
		internal : ShuvGetCredentialsInternal_typ;
	END_VAR
END_FUNCTION_BLOCK
