/* Automation Studio generated header file */
/* Do not edit ! */
/* Shuv 0.01.4 */

#ifndef _SHUV_
#define _SHUV_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _Shuv_VERSION
#define _Shuv_VERSION 0.01.4
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "standard.h"
		#include "AsARCfg.h"
		#include "AsHttp.h"
		#include "AsZip.h"
		#include "sys_lib.h"
		#include "AsICMP.h"
		#include "ArProject.h"
		#include "ArCert.h"
		#include "AsIO.h"
		#include "IotMqtt.h"
		#include "BodyGuard.h"
		#include "BRSE_ARL.h"
		#include "FIOWrap.h"
		#include "jsmn_parse.h"
		#include "LogThat.h"
#endif
#ifdef _SG4
		#include "standard.h"
		#include "AsARCfg.h"
		#include "AsHttp.h"
		#include "AsZip.h"
		#include "sys_lib.h"
		#include "AsICMP.h"
		#include "ArProject.h"
		#include "ArCert.h"
		#include "AsIO.h"
		#include "IotMqtt.h"
		#include "BodyGuard.h"
		#include "BRSE_ARL.h"
		#include "FIOWrap.h"
		#include "jsmn_parse.h"
		#include "LogThat.h"
#endif
#ifdef _SGC
		#include "standard.h"
		#include "AsARCfg.h"
		#include "AsHttp.h"
		#include "AsZip.h"
		#include "sys_lib.h"
		#include "AsICMP.h"
		#include "ArProject.h"
		#include "ArCert.h"
		#include "AsIO.h"
		#include "IotMqtt.h"
		#include "BodyGuard.h"
		#include "BRSE_ARL.h"
		#include "FIOWrap.h"
		#include "jsmn_parse.h"
		#include "LogThat.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define shuvMAX_MQTT_PUB_CHANNELS 2U
 #define shuvMAI_MQTT_PUB_CHANNELS 1U
 #define shuvMAX_MQTT_SUB_CHANNELS 5U
 #define shuvMAI_MQTT_SUB_CHANNELS 4U
 #define shuvDEFAULT_LOGGERNAME "App"
 #define shuvMQTT_SHUV_TOPIC_PREFIX "shuv/things/"
 #define shuvMQTT_PROVISION_TOPIC_SUFIX "/provision/json"
 #define shuvMQTT_PROVISION_TOPIC_PREFIX "$aws/provisioning-templates/"
 #define shuvMQTT_CERT_TOPIC_PREFIX "$aws/certificates/"
 #define shuvMQTT_CERT_TOPIC "$aws/certificates/create/json"
 #define shuvMQTT_SHADOW_TOPIC_PREFIX "$aws/things/"
 #define shuvMQTT_GET_VERSION_TOPIC "/version/get"
 _WEAK const plcstring shuvMQTT_PUB_TOPICS[2][81] = {"/shadow/update","/shadow/get"};
 _WEAK const plcstring shuvMQTT_SUB_TOPICS[5][81] = {"/shadow/update/accepted","/shadow/update/rejected","/shadow/update/delta","/shadow/get/accepted","/shadow/get/rejected"};
 #define shuvCERT_SIZE 4097U
 #define shuvRESPONSE_TIMEOUT 500000U
 #define shuvRESET_COUNTDOWN 6000U
 #define shuvMQTT_DEFAULT_PORT 8883U
 #define shuvMQTT_DEFAULT_IOT_ENDPOINT "a29pmho7ucy6qv-ats.iot.us-west-2.amazonaws.com"
 #define shadowOFFLINE_PUB_BUFFER 100U
 #define shadowCONNECT_TIMEOUT 120000U
 #define shadowKEEP_ALIVE_INTERVAL 10000U
 #define shuvCERT_DEVICE_ROOT "//CS:EXT/root-certificate.pem"
 #define shuvCERT_DEVICE_CERT "//CS:OWN/thing-certificate.pem.crt"
 #define shuvCERT_DEVICE_PRIVATE "//CS:KEY/thing-private.pem.key"
 #define shuvCERT_DEVICE_ROOT_NAME "root-certificate.pem"
 #define shuvCERT_DEVICE_CERT_NAME "thing-certificate.pem.crt"
 #define shuvCERT_DEVICE_PRIVATE_NAME "thing-private.pem.key"
 #define shuvSTATUS_upToDate "Up to date"
 #define shuvSTATUS_operatorWait "Waiting for operator"
 #define shuvSTATUS_updateGetInstaller "Updating - Getting installer"
 #define shuvSTATUS_updateVerifyInstaller "Updating - Verifying installer"
 #define shuvSTATUS_updateReboot "Updating - Rebooting"
 #define shuvSTATUS_operatorWaitSafe "Safety - Waiting for operator"
 #define shuvSTATUS_updateSafeValidate "Safety - Validating application"
 #define shuvSTATUS_updateSafeDownload "Safety - Downloading application"
 #define shuvSTATUS_updateSafeAcknowledge "Safety - Acknowledging application"
 #define shuvSTATUS_updateSafeReboot "Safety - Rebooting"
 #define shuvSTATUS_error "Error"
#else
 _GLOBAL_CONST unsigned char shuvMAX_MQTT_PUB_CHANNELS;
 _GLOBAL_CONST unsigned char shuvMAI_MQTT_PUB_CHANNELS;
 _GLOBAL_CONST unsigned char shuvMAX_MQTT_SUB_CHANNELS;
 _GLOBAL_CONST unsigned char shuvMAI_MQTT_SUB_CHANNELS;
 _GLOBAL_CONST plcstring shuvDEFAULT_LOGGERNAME[9];
 _GLOBAL_CONST plcstring shuvMQTT_SHUV_TOPIC_PREFIX[81];
 _GLOBAL_CONST plcstring shuvMQTT_PROVISION_TOPIC_SUFIX[81];
 _GLOBAL_CONST plcstring shuvMQTT_PROVISION_TOPIC_PREFIX[81];
 _GLOBAL_CONST plcstring shuvMQTT_CERT_TOPIC_PREFIX[81];
 _GLOBAL_CONST plcstring shuvMQTT_CERT_TOPIC[81];
 _GLOBAL_CONST plcstring shuvMQTT_SHADOW_TOPIC_PREFIX[81];
 _GLOBAL_CONST plcstring shuvMQTT_GET_VERSION_TOPIC[81];
 _GLOBAL_CONST plcstring shuvMQTT_PUB_TOPICS[2][81];
 _GLOBAL_CONST plcstring shuvMQTT_SUB_TOPICS[5][81];
 _GLOBAL_CONST unsigned short shuvCERT_SIZE;
 _GLOBAL_CONST unsigned long shuvRESPONSE_TIMEOUT;
 _GLOBAL_CONST unsigned long shuvRESET_COUNTDOWN;
 _GLOBAL_CONST unsigned long shuvMQTT_DEFAULT_PORT;
 _GLOBAL_CONST plcstring shuvMQTT_DEFAULT_IOT_ENDPOINT[81];
 _GLOBAL_CONST unsigned long shadowOFFLINE_PUB_BUFFER;
 _GLOBAL_CONST unsigned long shadowCONNECT_TIMEOUT;
 _GLOBAL_CONST unsigned long shadowKEEP_ALIVE_INTERVAL;
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_ROOT[81];
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_CERT[81];
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_PRIVATE[81];
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_ROOT_NAME[81];
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_CERT_NAME[81];
 _GLOBAL_CONST plcstring shuvCERT_DEVICE_PRIVATE_NAME[81];
 _GLOBAL_CONST plcstring shuvSTATUS_upToDate[201];
 _GLOBAL_CONST plcstring shuvSTATUS_operatorWait[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateGetInstaller[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateVerifyInstaller[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateReboot[201];
 _GLOBAL_CONST plcstring shuvSTATUS_operatorWaitSafe[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateSafeValidate[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateSafeDownload[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateSafeAcknowledge[201];
 _GLOBAL_CONST plcstring shuvSTATUS_updateSafeReboot[201];
 _GLOBAL_CONST plcstring shuvSTATUS_error[201];
#endif




/* Datatypes and datatypes of function blocks */
typedef enum SHUV_PARSE_enum
{	SHUV_PARSE_SHADOW,
	SHUV_PARSE_VERSION,
	SHUV_PARSE_CERT,
	SHUV_PARSE_PROVISION,
	SHUV_PARSE_ERROR
} SHUV_PARSE_enum;

typedef enum SHUV_ST_enum
{	SHUV_ST_CHECK_CERT,
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
} SHUV_ST_enum;

typedef enum SHUV_ERR_enum
{	SHUV_ERR_DUPLICATE_CERT = 6100,
	SHUV_ERR_NO_LICENSE = 6101,
	SHUV_ERR_INSTALLER_FOLDER_READ = 6102,
	SHUV_ERR_INSTALLATION_FAILURE = 6103,
	SHUV_ERR_ZIP_EXTRACTION_FAILURE = 6104,
	SHUV_ERR_CORRUPT_INSTALLER_DATA = 6105,
	SHUV_ERR_SAVING_INSTALLER = 6106,
	SHUV_ERR_INSTALLER_FOLDER_CREATE = 6107,
	SHUV_ERR_HTTP_REQUEST = 6108,
	SHUV_ERR_INSTALLER_GET_DETAILS = 6109,
	SHUV_ERR_SHADOW_CONNECTION = 6110,
	SHUV_ERR_DELETE_CERT = 6111,
	SHUV_ERR_SAVE_CERT = 6112,
	SHUV_ERR_DEVICE_REGISTRATION = 6113,
	SHUV_ERR_RETRIEVE_CREDENTIALS = 6114,
	SHUV_ERR_CHECK_CERT = 6115,
	SHUV_ERR_INSTALLER_FOLDER_EMPTY = 6116
} SHUV_ERR_enum;

typedef enum SHADOW_ST_enum
{	SHADOW_ST_CONNECT,
	SHADOW_ST_SETUP,
	SHADOW_ST_GET_REQUEST,
	SHADOW_ST_GET_RESPONSE,
	SHADOW_ST_UPDATE_CREATE_STRING,
	SHADOW_ST_UPDATE_REQUEST,
	SHADOW_ST_UPDATE_RESPONSE,
	SHADOW_ST_ACTIVE,
	SHADOW_ST_ERROR
} SHADOW_ST_enum;

typedef enum MQTT_PUB_CH_enum
{	MQTT_PUB_CH_UPDATE,
	MQTT_PUB_CH_GET,
	MQTT_PUB_CH_END
} MQTT_PUB_CH_enum;

typedef enum MQTT_SUB_CH_enum
{	MQTT_SUB_CH_UPDATE_ACCEPTED,
	MQTT_SUB_CH_UPDATE_REJECTED,
	MQTT_SUB_CH_UPDATE_DELTA,
	MQTT_SUB_CH_GET_ACCEPTED,
	MQTT_SUB_CH_GET_REJECTED,
	MQTT_SUB_CH_END
} MQTT_SUB_CH_enum;

typedef enum DIAG_ST_enum
{	DIAG_ST_IDLE,
	DIAG_ST_PING
} DIAG_ST_enum;

typedef struct ShuvInCmd_typ
{	plcbit installUpdate;
	plcbit acknowledgeError;
} ShuvInCmd_typ;

typedef struct ShadowInCfg_typ
{	plcstring iotEndpoint[256];
	unsigned short port;
} ShadowInCfg_typ;

typedef struct ShuvInCredentials_typ
{	plcstring certificateFilename[256];
	plcstring privateKeyFilename[256];
	plcstring rootCAFilename[256];
} ShuvInCredentials_typ;

typedef struct ShuvInCfg_typ
{	plcbit active;
	plcstring fileDevice[81];
	struct ShadowInCfg_typ shadow;
	plcstring loggerName[9];
	plcstring applicationVersion[201];
	struct ShuvInCredentials_typ claimCredentials;
	plcstring organizationName[201];
	plcstring pipelineName[201];
} ShuvInCfg_typ;

typedef struct ShuvInPar_typ
{	unsigned long pResponseData;
	unsigned long responseDataSize;
} ShuvInPar_typ;

typedef struct ShuvIn_typ
{	struct ShuvInCmd_typ cmd;
	struct ShuvInCfg_typ cfg;
	struct ShuvInPar_typ par;
} ShuvIn_typ;

typedef struct ShuvVersionInfoShort_typ
{	plcstring version[201];
	plcstring lastModified[101];
} ShuvVersionInfoShort_typ;

typedef struct ShuvOut_typ
{	plcbit error;
	signed long errorId;
	plcstring errorString[81];
	plcbit initialized;
	plcstring status[81];
	plcbit updateAvailable;
	struct ShuvVersionInfoShort_typ updateInfo;
	plcbit updating;
	plcstring iotDeviceName[81];
	plcstring mqttClientID[81];
	unsigned long pShadow;
	unsigned long pInterface;
	struct IoTMqttComIdentType* mqttLink;
} ShuvOut_typ;

typedef struct ShadowInCmd_typ
{	plcbit enable;
	plcbit acknowledgeError;
} ShadowInCmd_typ;

typedef struct ShadowInPar_typ
{	plcstring deviceName[81];
	unsigned long pShadowData;
	plcstring loggerName[9];
	struct IoTMqttComIdentType* iotMqttLink;
} ShadowInPar_typ;

typedef struct ShadowIn_typ
{	struct ShadowInCmd_typ cmd;
	struct ShadowInPar_typ par;
	struct ShadowInCfg_typ cfg;
} ShadowIn_typ;

typedef struct ShadowOut_typ
{	plcbit connected;
	plcbit error;
	unsigned short errorId;
	plcstring errorString[81];
} ShadowOut_typ;

typedef struct ShadowInternalPub_typ
{	struct IotMqttPublish mqttPublish;
	plcstring configuredTopic[201];
	plcstring sendBuffer[5001];
} ShadowInternalPub_typ;

typedef struct ShadowInternalSub_typ
{	struct IotMqttSubscribe mqttSubscribe;
	plcstring configuredTopic[201];
	plcstring receivedTopic[201];
	plcstring receiveBuffer[5001];
} ShadowInternalSub_typ;

typedef struct ShadowDataReported_typ
{	plcstring applicationVersion[81];
	plcstring safeApplicationVersion[81];
	plcstring genericStatus[10][81];
	plcbit onlineStatus;
	plcstring deploymentStatus[201];
	plcstring errorMessage[81];
	signed long errorId;
	plcstring shuvLibraryVersion[81];
} ShadowDataReported_typ;

typedef struct ShuvAwsError_typ
{	signed long statusCode;
	plcstring errorCode[256];
	plcstring errorMessage[321];
} ShuvAwsError_typ;

typedef struct ShadowInternal_typ
{	enum SHADOW_ST_enum state;
	enum SHADOW_ST_enum stateTrace[100];
	struct IoTMqttComIdentType* mqttLink;
	struct ShadowInternalPub_typ publish[2];
	struct ShadowInternalSub_typ subscribe[5];
	struct ShadowDataReported_typ reportedData;
	plcbit initialized;
	struct ShuvAwsError_typ awsError;
} ShadowInternal_typ;

typedef struct Shadow_typ
{	struct ShadowIn_typ in;
	struct ShadowOut_typ out;
	struct ShadowInternal_typ internal;
} Shadow_typ;

typedef struct ShuvGetVersionInfoParams_typ
{	plcbit lastModified;
	plcbit uri;
	plcbit md5Checksum;
	plcbit fileLength;
} ShuvGetVersionInfoParams_typ;

typedef struct ShuvVersionInfo_typ
{	plcstring version[201];
	plcstring lastModified[101];
	plcstring host[201];
	plcstring md5Checksum[201];
	unsigned long fileLength;
	plcstring uri[5][321];
} ShuvVersionInfo_typ;

typedef struct ShuvGetVersionInternal_typ
{	plcbit get;
	plcstring recieveBuffer[5001];
	plcstring sendBuffer[1001];
	struct IotMqttSubscribe subscriber;
	struct IotMqttPublish publisher;
	plcstring recieveTopic[201];
	plcstring subscribeTopic[201];
	plcstring publishTopic[201];
} ShuvGetVersionInternal_typ;

typedef struct ShuvGetVersionInfo
{
	/* VAR_INPUT (analog) */
	plcstring version[201];
	plcstring deviceName[201];
	struct ShuvGetVersionInfoParams_typ parameters;
	struct IoTMqttComIdentType* mqttLink;
	/* VAR_OUTPUT (analog) */
	struct ShuvVersionInfo_typ info;
	/* VAR (analog) */
	struct ShuvGetVersionInternal_typ internal;
	/* VAR_INPUT (digital) */
	plcbit get;
	/* VAR_OUTPUT (digital) */
	plcbit busy;
	plcbit error;
	plcbit done;
} ShuvGetVersionInfo_typ;

typedef struct ShuvRegisterInternal_typ
{	plcbit provision;
	plcstring recieveBuffer[2][5001];
	plcstring sendBuffer[1001];
	struct IotMqttSubscribe subscriber[2];
	struct IotMqttPublish publisher;
	plcstring recieveTopic[2][201];
	plcstring subscribeTopic[2][201];
	plcstring publishTopic[201];
	struct ShuvAwsError_typ awsError;
} ShuvRegisterInternal_typ;

typedef struct ShuvRegister
{
	/* VAR_INPUT (analog) */
	struct IoTMqttComIdentType* mqttLink;
	plcstring provisionTemplate[121];
	unsigned long certOwnershipToken;
	unsigned long serialNumber;
	/* VAR_OUTPUT (analog) */
	plcstring thingName[81];
	signed long errorId;
	/* VAR (analog) */
	struct ShuvRegisterInternal_typ internal;
	/* VAR_INPUT (digital) */
	plcbit provision;
	/* VAR_OUTPUT (digital) */
	plcbit busy;
	plcbit error;
	plcbit done;
} ShuvRegister_typ;

typedef struct ShuvCerts_typ
{	unsigned long pCertId;
	unsigned long pCertPem;
	unsigned long pPrivateKey;
	unsigned long pCertOwnershipToken;
} ShuvCerts_typ;

typedef struct ShuvCertsInternal_typ
{	plcstring certificateId[4098];
	plcstring certificatePem[4098];
	plcstring privateKey[4098];
	plcstring certificateOwnershipToken[4098];
} ShuvCertsInternal_typ;

typedef struct ShuvGetCredentialsInternal_typ
{	plcbit getCredentials;
	plcbit saveCredentials;
	plcbit deleteCredentials;
	plcstring keyName[201];
	plcstring certName[201];
	plcstring recieveBuffer[5001];
	plcstring sendBuffer[101];
	struct IotMqttSubscribe subscriber;
	struct IotMqttPublish publisher;
	struct ArCertImportOwn importCert;
	struct ArCertImportPrivateKey importKey;
	struct ArCertDeleteOwn deleteCert;
	struct ArCertDeletePrivateKey deleteKey;
	plcstring recieveTopic[201];
	plcstring subscribeTopic[201];
	plcstring publishTopic[201];
	struct ShuvCertsInternal_typ certs;
	struct ShuvAwsError_typ awsError;
} ShuvGetCredentialsInternal_typ;

typedef struct ShuvGetCredentials
{
	/* VAR_INPUT (analog) */
	struct IoTMqttComIdentType* mqttLink;
	struct ShuvInCredentials_typ credentialInfo;
	/* VAR_OUTPUT (analog) */
	struct ShuvCerts_typ certs;
	signed long errorId;
	/* VAR (analog) */
	struct ShuvGetCredentialsInternal_typ internal;
	/* VAR_INPUT (digital) */
	plcbit getCredentials;
	plcbit saveCredentials;
	plcbit deleteCredentials;
	/* VAR_OUTPUT (digital) */
	plcbit busy;
	plcbit error;
	plcbit done;
} ShuvGetCredentials_typ;

typedef struct ShuvInternalFub_typ
{	struct httpClient httpClient;
	struct TON responseTimeout;
	struct FIOWrap_typ fileIO;
	struct FIOManage_typ fileIOManage;
	struct ArProjectInstallPackage installPackage;
	struct zipExtract zipExtract;
	struct TON resetCountdown;
	struct Shadow_typ awsShadow;
	struct IotMqttClient mqttClient;
	struct DirRead dirRead;
	struct DirCreate dirCreate;
	struct ShuvGetVersionInfo getVersionInfo;
	struct DTGetTime getTime;
	struct ArCertGetOwnDetails certDetails;
	struct ShuvRegister registerThing;
	struct ShuvGetCredentials getCredentials;
	struct AsIODPStatus ioChannelRead;
} ShuvInternalFub_typ;

typedef struct ShuvInternalHttp_typ
{	plcstring host[201];
	plcstring uri[2001];
	struct httpRequestHeader_t requestHeader;
	plcstring requestData[1001];
	struct httpResponseHeader_t responseHeader;
	struct httpStatistics_t statistics;
	unsigned long fileLength;
} ShuvInternalHttp_typ;

typedef struct ShuvInternalMqtt_typ
{	struct ShuvVersionInfo_typ versionInfo;
	struct IoTMqttComIdentType mqttLink;
	struct IotMqttClientParType clientParameters;
	struct IotMqttConfigParametersType configParameters;
} ShuvInternalMqtt_typ;

typedef struct ShuvInternalMd5_typ
{	plcstring calculated[33];
	plcstring received[33];
} ShuvInternalMd5_typ;

typedef struct ShuvInternalFile_typ
{	plcstring path[201];
	struct fiDIR_READ_DATA dirReadData;
} ShuvInternalFile_typ;

typedef struct ShadowDataDesired_typ
{	plcstring installerHost[201];
	plcstring installerUri[5][321];
	plcstring installerMD5[201];
	plcstring applicationVersion[81];
	plcstring safeApplicationVersion[81];
	unsigned long fileLength;
	plcstring genericCommand[10][81];
	plcbit confirmUpdate;
} ShadowDataDesired_typ;

typedef struct ShadowData_typ
{	struct ShadowDataDesired_typ desired;
	struct ShadowDataReported_typ reported;
	plcstring version[81];
} ShadowData_typ;

typedef struct ShuvInterfaceData_typ
{	plcbit externalComponentPresent;
	plcbit shadowConnected;
	plcbit plcUpdateAllowed;
	plcbit plcUpdateAvailable;
} ShuvInterfaceData_typ;

typedef struct ShuvInternal_typ
{	struct ShuvInternalFub_typ fub;
	enum SHUV_ST_enum state;
	enum SHUV_ST_enum stateTrace[100];
	struct ShuvInternalHttp_typ http;
	struct ShuvInternalMqtt_typ mqtt;
	struct ShuvInternalMd5_typ md5;
	struct ShuvInternalFile_typ file;
	struct ShuvInCredentials_typ activeCredentials;
	struct ShuvInCredentials_typ deviceCredentials;
	struct ShuvInCredentials_typ deviceCredentialsName;
	unsigned long resetCountdown;
	struct ShadowData_typ shadowData;
	struct ShuvInterfaceData_typ interfaceData;
	struct ShuvInCmd_typ cmd;
	enum SHUV_ST_enum lastState;
	plcbit hasGottenCert;
	unsigned long plcSerialNumber;
} ShuvInternal_typ;

typedef struct Shuv_typ
{	struct ShuvIn_typ in;
	struct ShuvOut_typ out;
	struct ShuvInternal_typ internal;
} Shuv_typ;

typedef struct DiagnoseInCmd_typ
{	plcbit ping;
} DiagnoseInCmd_typ;

typedef struct DiagnoseInCfg_typ
{	plcstring host[81];
	unsigned long timeout_ms;
} DiagnoseInCfg_typ;

typedef struct DiagnoseIn_typ
{	struct DiagnoseInCmd_typ cmd;
	struct DiagnoseInCfg_typ cfg;
} DiagnoseIn_typ;

typedef struct DiagnoseOut_typ
{	plcbit error;
	plcstring errorString[201];
	plcbit done;
} DiagnoseOut_typ;

typedef struct DiagnoseInternalFub_typ
{	struct IcmpPing ping;
} DiagnoseInternalFub_typ;

typedef struct DiagnoseInternal_typ
{	struct DiagnoseInternalFub_typ fub;
	enum DIAG_ST_enum state;
	plcstring errorCode[81];
	struct DiagnoseInCmd_typ cmd;
} DiagnoseInternal_typ;

typedef struct Diagnose_typ
{	struct DiagnoseIn_typ in;
	struct DiagnoseOut_typ out;
	struct DiagnoseInternal_typ internal;
} Diagnose_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void ShuvGetVersionInfo(struct ShuvGetVersionInfo* inst);
_BUR_PUBLIC void ShuvRegister(struct ShuvRegister* inst);
_BUR_PUBLIC void ShuvGetCredentials(struct ShuvGetCredentials* inst);
_BUR_PUBLIC plcbit ShuvInit(struct Shuv_typ* shuv);
_BUR_PUBLIC plcbit ShuvCyclic(struct Shuv_typ* shuv);
_BUR_PUBLIC plcbit Diagnose(struct Diagnose_typ* diag);


__asm__(".section \".plc\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/Shuv/Libraries/External/LogThat/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecdep \\\"Logical/Shuv/Libraries/External/jsmn_parse/Constants.var\\\" scope \\\"global\\\"\\n\"");

__asm__(".previous");

#ifdef __cplusplus
};
#endif
#endif /* _SHUV_ */

