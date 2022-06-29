(*Shuv structures*)

TYPE
	Shuv_typ : 	STRUCT 
		in : ShuvIn_typ;
		out : ShuvOut_typ;
		internal : ShuvInternal_typ;
	END_STRUCT;
	ShuvIn_typ : 	STRUCT 
		cmd : ShuvInCmd_typ;
		cfg : ShuvInCfg_typ;
		par : ShuvInPar_typ;
	END_STRUCT;
	ShuvInCmd_typ : 	STRUCT 
		installUpdate : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	ShuvInCfg_typ : 	STRUCT 
		active : BOOL;
		fileDevice : STRING[80];
		shadow : ShadowInCfg_typ;
		loggerName : STRING[LOG_STRLEN_LOGGERNAME];
		applicationVersion : STRING[200];
		claimCredentials : ShuvInCredentials_typ;
		organizationName : STRING[200];
		pipelineName : STRING[200];
	END_STRUCT;
	ShuvInCredentials_typ : 	STRUCT 
		certificateFilename : STRING[255];
		privateKeyFilename : STRING[255];
		rootCAFilename : STRING[255];
	END_STRUCT;
	ShuvInPar_typ : 	STRUCT 
		pResponseData : UDINT;
		responseDataSize : UDINT;
	END_STRUCT;
	ShuvInternalFub_typ : 	STRUCT 
		httpClient : httpClient;
		responseTimeout : TON;
		fileIO : FIOWrap_typ;
		fileIOManage : FIOManage_typ;
		installPackage : ArProjectInstallPackage;
		zipExtract : zipExtract;
		resetCountdown : TON;
		awsShadow : Shadow_typ;
		mqttClient : IotMqttClient;
		dirRead : DirRead;
		dirCreate : DirCreate;
		getVersionInfo : ShuvGetVersionInfo;
		getTime : DTGetTime;
		certDetails : ArCertGetOwnDetails;
		registerThing : ShuvRegister;
		getCredentials : ShuvGetCredentials;
		ioChannelRead : AsIODPStatus;
	END_STRUCT;
	ShuvInternal_typ : 	STRUCT 
		fub : ShuvInternalFub_typ;
		state : SHUV_ST_enum;
		stateTrace : ARRAY[0..99]OF SHUV_ST_enum;
		http : ShuvInternalHttp_typ;
		mqtt : ShuvInternalMqtt_typ;
		md5 : ShuvInternalMd5_typ;
		file : ShuvInternalFile_typ;
		activeCredentials : ShuvInCredentials_typ;
		deviceCredentials : ShuvInCredentials_typ;
		deviceCredentialsName : ShuvInCredentials_typ;
		resetCountdown : UDINT;
		shadowData : ShadowData_typ;
		interfaceData : ShuvInterfaceData_typ;
		cmd : ShuvInCmd_typ;
		lastState : SHUV_ST_enum;
		hasGottenCert : BOOL;
		plcSerialNumber : UDINT;
	END_STRUCT;
	ShuvInternalMqtt_typ : 	STRUCT 
		versionInfo : ShuvVersionInfo_typ;
		mqttLink : IoTMqttComIdentType;
		clientParameters : IotMqttClientParType;
		configParameters : IotMqttConfigParametersType;
	END_STRUCT;
	ShuvInternalHttp_typ : 	STRUCT 
		host : STRING[200];
		uri : STRING[2000];
		requestHeader : httpRequestHeader_t;
		requestData : STRING[1000];
		responseHeader : httpResponseHeader_t;
		statistics : httpStatistics_t;
		fileLength : UDINT;
	END_STRUCT;
	ShuvInternalFile_typ : 	STRUCT 
		path : STRING[200];
		dirReadData : fiDIR_READ_DATA;
	END_STRUCT;
	ShuvInternalMd5_typ : 	STRUCT 
		calculated : STRING[32];
		received : STRING[32];
	END_STRUCT;
	ShuvOut_typ : 	STRUCT 
		error : BOOL;
		errorId : DINT;
		errorString : STRING[80];
		initialized : BOOL;
		status : STRING[80];
		updateAvailable : BOOL;
		updateInfo : ShuvVersionInfoShort_typ;
		updating : BOOL;
		iotDeviceName : STRING[80];
		mqttClientID : STRING[80];
		pShadow : UDINT;
		pInterface : UDINT;
		mqttLink : REFERENCE TO IoTMqttComIdentType;
	END_STRUCT;
	ShuvInterfaceData_typ : 	STRUCT 
		externalComponentPresent : BOOL;
		shadowConnected : BOOL;
		plcUpdateAllowed : BOOL;
		plcUpdateAvailable : BOOL;
	END_STRUCT;
	ShuvAwsError_typ : 	STRUCT 
		statusCode : DINT;
		errorCode : STRING[255];
		errorMessage : STRING[320];
	END_STRUCT;
	SHUV_PARSE_enum : 
		(
		SHUV_PARSE_SHADOW,
		SHUV_PARSE_VERSION,
		SHUV_PARSE_CERT,
		SHUV_PARSE_PROVISION,
		SHUV_PARSE_ERROR
		);
	SHUV_ST_enum : 
		(
		SHUV_ST_CHECK_CERT,
		SHUV_ST_GET_CERT,
		SHUV_ST_REGISTER,
		SHUV_ST_SAVE_CERT,
		SHUV_ST_DELETE_CERT,
		SHUV_ST_GET_LOCAL_INFO,
		SHUV_ST_CONNECT_SHADOW,
		SHUV_ST_READY,
		SHUV_ST_GET_UPDATE_INFO,
		SHUV_ST_UPDATE_AVAILABLE,
		SHUV_ST_GET_INSTALLER_URL,
		SHUV_ST_GET_INSTALLER_DATA,
		SHUV_ST_CREATE_INSTALLER_FOLDER,
		SHUV_ST_EMPTY_INSTALLER_FOLDER,
		SHUV_ST_CREATE_INSTALLER_FILE,
		SHUV_ST_VERIFY_INSTALLER_DATA,
		SHUV_ST_UNZIP_INSTALLER_FILE,
		SHUV_ST_FIND_INSTALLER,
		SHUV_ST_INSTALL,
		SHUV_ST_REPORT_RECOVERABLE_ERROR,
		SHUV_ST_ERROR
		);
	SHUV_ERR_enum : 
		(
		SHUV_ERR_DUPLICATE_CERT := 6100,
		SHUV_ERR_NO_LICENSE := 6101,
		SHUV_ERR_INSTALLER_FOLDER_READ := 6102,
		SHUV_ERR_INSTALLATION_FAILURE := 6103,
		SHUV_ERR_ZIP_EXTRACTION_FAILURE := 6104,
		SHUV_ERR_CORRUPT_INSTALLER_DATA := 6105,
		SHUV_ERR_SAVING_INSTALLER := 6106,
		SHUV_ERR_INSTALLER_FOLDER_CREATE := 6107,
		SHUV_ERR_HTTP_REQUEST := 6108,
		SHUV_ERR_INSTALLER_GET_DETAILS := 6109,
		SHUV_ERR_SHADOW_CONNECTION := 6110,
		SHUV_ERR_DELETE_CERT := 6111,
		SHUV_ERR_SAVE_CERT := 6112,
		SHUV_ERR_DEVICE_REGISTRATION := 6113,
		SHUV_ERR_RETRIEVE_CREDENTIALS := 6114,
		SHUV_ERR_CHECK_CERT := 6115,
		SHUV_ERR_INSTALLER_FOLDER_EMPTY := 6116
		);
END_TYPE

(**)
(*Version Info Structures*)

TYPE
	ShuvVersionInfoShort_typ : 	STRUCT 
		version : STRING[200];
		lastModified : STRING[100];
	END_STRUCT;
END_TYPE

(**)
(*Shadow structures*)

TYPE
	Shadow_typ : 	STRUCT 
		in : ShadowIn_typ;
		out : ShadowOut_typ;
		internal : ShadowInternal_typ;
	END_STRUCT;
	ShadowInternal_typ : 	STRUCT 
		state : SHADOW_ST_enum;
		stateTrace : ARRAY[0..99]OF SHADOW_ST_enum;
		mqttLink : REFERENCE TO IoTMqttComIdentType;
		publish : ARRAY[0..shuvMAI_MQTT_PUB_CHANNELS]OF ShadowInternalPub_typ;
		subscribe : ARRAY[0..shuvMAI_MQTT_SUB_CHANNELS]OF ShadowInternalSub_typ;
		reportedData : ShadowDataReported_typ;
		initialized : BOOL;
		awsError : ShuvAwsError_typ;
	END_STRUCT;
	ShadowInternalPub_typ : 	STRUCT 
		mqttPublish : IotMqttPublish;
		configuredTopic : STRING[200];
		sendBuffer : STRING[5000];
	END_STRUCT;
	ShadowInternalSub_typ : 	STRUCT 
		mqttSubscribe : IotMqttSubscribe;
		configuredTopic : STRING[200];
		receivedTopic : STRING[200];
		receiveBuffer : STRING[5000];
	END_STRUCT;
	ShadowIn_typ : 	STRUCT 
		cmd : ShadowInCmd_typ;
		par : ShadowInPar_typ;
		cfg : ShadowInCfg_typ;
	END_STRUCT;
	ShadowInCmd_typ : 	STRUCT 
		enable : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	ShadowInCfg_typ : 	STRUCT 
		iotEndpoint : STRING[255];
		port : UINT;
	END_STRUCT;
	ShadowInPar_typ : 	STRUCT 
		deviceName : STRING[80];
		pShadowData : UDINT;
		loggerName : STRING[LOG_STRLEN_LOGGERNAME];
		iotMqttLink : REFERENCE TO IoTMqttComIdentType;
	END_STRUCT;
	ShadowData_typ : 	STRUCT 
		desired : ShadowDataDesired_typ;
		reported : ShadowDataReported_typ;
		version : STRING[80];
	END_STRUCT;
	ShadowDataDesired_typ : 	STRUCT 
		installerHost : STRING[200];
		installerUri : ARRAY[0..4]OF STRING[JSMN_STRLEN_CALLBACK_DATA];
		installerMD5 : STRING[200];
		applicationVersion : STRING[80];
		safeApplicationVersion : STRING[80];
		fileLength : UDINT;
		genericCommand : ARRAY[0..9]OF STRING[80];
		confirmUpdate : BOOL;
	END_STRUCT;
	ShadowDataReported_typ : 	STRUCT 
		applicationVersion : STRING[80];
		safeApplicationVersion : STRING[80];
		genericStatus : ARRAY[0..9]OF STRING[80];
		onlineStatus : BOOL;
		deploymentStatus : STRING[200];
		errorMessage : STRING[80];
		errorId : DINT;
		shuvLibraryVersion : STRING[80];
	END_STRUCT;
	ShadowOut_typ : 	STRUCT 
		connected : BOOL;
		error : BOOL;
		errorId : UINT;
		errorString : STRING[80];
	END_STRUCT;
	SHADOW_ST_enum : 
		(
		SHADOW_ST_CONNECT,
		SHADOW_ST_SETUP,
		SHADOW_ST_GET_REQUEST,
		SHADOW_ST_GET_RESPONSE,
		SHADOW_ST_UPDATE_CREATE_STRING,
		SHADOW_ST_UPDATE_REQUEST,
		SHADOW_ST_UPDATE_RESPONSE,
		SHADOW_ST_ACTIVE,
		SHADOW_ST_ERROR
		);
	MQTT_PUB_CH_enum : 
		(
		MQTT_PUB_CH_UPDATE,
		MQTT_PUB_CH_GET,
		MQTT_PUB_CH_END
		);
	MQTT_SUB_CH_enum : 
		(
		MQTT_SUB_CH_UPDATE_ACCEPTED,
		MQTT_SUB_CH_UPDATE_REJECTED,
		MQTT_SUB_CH_UPDATE_DELTA,
		MQTT_SUB_CH_GET_ACCEPTED,
		MQTT_SUB_CH_GET_REJECTED,
		MQTT_SUB_CH_END
		);
END_TYPE

(**)
(*GetVersion*)

TYPE
	ShuvVersionInfo_typ : 	STRUCT 
		version : STRING[200];
		lastModified : STRING[100];
		host : STRING[200];
		md5Checksum : STRING[200];
		fileLength : UDINT;
		uri : ARRAY[0..4]OF STRING[JSMN_STRLEN_CALLBACK_DATA];
	END_STRUCT;
	ShuvGetVersionInfoParams_typ : 	STRUCT 
		lastModified : BOOL;
		uri : BOOL;
		md5Checksum : BOOL;
		fileLength : BOOL;
	END_STRUCT;
	ShuvGetVersionInternal_typ : 	STRUCT 
		get : BOOL;
		recieveBuffer : STRING[5000];
		sendBuffer : STRING[1000];
		subscriber : IotMqttSubscribe;
		publisher : IotMqttPublish;
		recieveTopic : STRING[200];
		subscribeTopic : STRING[200];
		publishTopic : STRING[200];
	END_STRUCT;
END_TYPE

(**)
(*Register*)

TYPE
	ShuvRegisterInternal_typ : 	STRUCT 
		provision : BOOL;
		recieveBuffer : ARRAY[0..1]OF STRING[5000];
		sendBuffer : STRING[1000];
		subscriber : ARRAY[0..1]OF IotMqttSubscribe;
		publisher : IotMqttPublish;
		recieveTopic : ARRAY[0..1]OF STRING[200];
		subscribeTopic : ARRAY[0..1]OF STRING[200];
		publishTopic : STRING[200];
		awsError : ShuvAwsError_typ;
	END_STRUCT;
END_TYPE

(**)
(*GetCredentials*)

TYPE
	ShuvCertsInternal_typ : 	STRUCT 
		certificateId : STRING[shuvCERT_SIZE];
		certificatePem : STRING[shuvCERT_SIZE];
		privateKey : STRING[shuvCERT_SIZE];
		certificateOwnershipToken : STRING[shuvCERT_SIZE];
	END_STRUCT;
	ShuvCerts_typ : 	STRUCT 
		pCertId : UDINT;
		pCertPem : UDINT;
		pPrivateKey : UDINT;
		pCertOwnershipToken : UDINT;
	END_STRUCT;
	ShuvGetCredentialsInternal_typ : 	STRUCT 
		getCredentials : BOOL;
		saveCredentials : BOOL;
		deleteCredentials : BOOL;
		keyName : STRING[200];
		certName : STRING[200];
		recieveBuffer : STRING[5000];
		sendBuffer : STRING[100];
		subscriber : IotMqttSubscribe;
		publisher : IotMqttPublish;
		importCert : ArCertImportOwn;
		importKey : ArCertImportPrivateKey;
		deleteCert : ArCertDeleteOwn;
		deleteKey : ArCertDeletePrivateKey;
		recieveTopic : STRING[200];
		subscribeTopic : STRING[200];
		publishTopic : STRING[200];
		certs : ShuvCertsInternal_typ;
		awsError : ShuvAwsError_typ;
	END_STRUCT;
END_TYPE

(**)
(*Diagnose structures*)

TYPE
	Diagnose_typ : 	STRUCT 
		in : DiagnoseIn_typ;
		out : DiagnoseOut_typ;
		internal : DiagnoseInternal_typ;
	END_STRUCT;
	DiagnoseIn_typ : 	STRUCT 
		cmd : DiagnoseInCmd_typ;
		cfg : DiagnoseInCfg_typ;
	END_STRUCT;
	DiagnoseInCmd_typ : 	STRUCT 
		ping : BOOL;
	END_STRUCT;
	DiagnoseInCfg_typ : 	STRUCT 
		host : STRING[80];
		timeout_ms : UDINT;
	END_STRUCT;
	DiagnoseOut_typ : 	STRUCT 
		error : BOOL;
		errorString : STRING[200];
		done : BOOL;
	END_STRUCT;
	DiagnoseInternalFub_typ : 	STRUCT 
		ping : IcmpPing;
	END_STRUCT;
	DiagnoseInternal_typ : 	STRUCT 
		fub : DiagnoseInternalFub_typ;
		state : DIAG_ST_enum;
		errorCode : STRING[80];
		cmd : DiagnoseInCmd_typ;
	END_STRUCT;
	DIAG_ST_enum : 
		(
		DIAG_ST_IDLE,
		DIAG_ST_PING
		);
END_TYPE
