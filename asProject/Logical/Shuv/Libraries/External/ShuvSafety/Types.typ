(*ShuvSafety structures*)

TYPE
	ShuvSafety_typ : 	STRUCT 
		in : ShuvSafetyIn_typ;
		out : ShuvSafetyOut_typ;
		internal : ShuvSafetyInternal_typ;
	END_STRUCT;
	ShuvSafetyIn_typ : 	STRUCT 
		cmd : ShuvSafetyInCmd_typ;
		par : ShuvSafetyInPar_typ;
		cfg : ShuvSafetyInCfg_typ;
	END_STRUCT;
	ShuvSafetyInCmd_typ : 	STRUCT 
		installUpdate : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	ShuvSafetyInPar_typ : 	STRUCT 
		pShadow : UDINT;
		pInterface : UDINT;
		safeApplicationRunning : BOOL;
	END_STRUCT;
	ShuvSafetyInCfg_typ : 	STRUCT 
		active : BOOL;
		pSfDomain : UDINT;
		safetyUsername : STRING[80];
		safetyPassword : STRING[80];
		safeApplication : STRING[80];
	END_STRUCT;
	ShuvSafetyInternalFub_typ : 	STRUCT 
		connect : SfDomainConnect;
		transfer : SfDomainTransfer;
		info : SfDomainInfo;
		completion : SfDomainCompletion;
	END_STRUCT;
	ShuvSafetyInternal_typ : 	STRUCT 
		fub : ShuvSafetyInternalFub_typ;
		state : shuvsafeST_enum;
		stateTrace : ARRAY[0..99]OF shuvsafeST_enum;
		cmd : ShuvSafetyInCmd_typ;
		lastState : shuvsafeST_enum;
	END_STRUCT;
	ShuvSafetyOut_typ : 	STRUCT 
		error : BOOL;
		errorId : DINT;
		errorString : STRING[80];
		initialized : BOOL;
		status : STRING[80];
		transferProgress : USINT;
		updateAvailable : BOOL;
		updating : BOOL;
		postUpdateInfo : SfDomainInfoType;
		preUpdateInfo : SfDomainInfoType;
	END_STRUCT;
	shuvsafeST_enum : 
		(
		shuvsafeST_INIT,
		shuvsafeST_LOCAL_INFO_CONNECT,
		shuvsafeST_LOCAL_INFO_GET,
		shuvsafeST_LOCAL_INFO_DISCONNECT,
		shuvsafeST_READY,
		shuvsafeST_UPDATE_AVAILABLE,
		shuvsafeST_CONNECT,
		shuvsafeST_TRANSFER,
		shuvsafeST_GET_POST_UPDATE_INFO,
		shuvsafeST_COMPLETE,
		shuvsafeST_DISCONNECT,
		shuvsafeST_REBOOT,
		shuvsafeST_REPORT_ERROR,
		shuvsafeST_ERROR
		);
	shuvsafeERR_enum : 
		(
		shuvsafeERR_CONNECT,
		shuvsafeERR_TRANSFER,
		shuvsafeERR_INFO,
		shuvsafeERR_COMPLETION
		);
END_TYPE
