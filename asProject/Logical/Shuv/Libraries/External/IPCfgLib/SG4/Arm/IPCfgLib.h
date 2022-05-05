/* Automation Studio generated header file */
/* Do not edit ! */
/* IPCfgLib 3.01.2 */

#ifndef _IPCFGLIB_
#define _IPCFGLIB_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _IPCfgLib_VERSION
#define _IPCfgLib_VERSION 3.01.2
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG4
		#include "AsBrStr.h"
		#include "AsARCfg.h"
		#include "FileIO.h"
		#include "StringExt.h"
#endif
#ifdef _SG3
		#include "AsBrStr.h"
		#include "AsARCfg.h"
		#include "FileIO.h"
		#include "StringExt.h"
#endif
#ifdef _SGC
		#include "AsBrStr.h"
		#include "AsARCfg.h"
		#include "FileIO.h"
		#include "StringExt.h"
#endif

/* Datatypes and datatypes of function blocks */
typedef struct IPConfig_Settings_typ
{	plcstring INADeviceName[81];
	unsigned long IPMode;
	plcstring IPAddress[17];
	plcstring SubnetMask[17];
	plcstring DefaultGateway[17];
	plcstring HostName[81];
	unsigned char INANode;
	unsigned char MacAddress[6];
} IPConfig_Settings_typ;

typedef struct IPConfig_Internal_typ
{	struct IPConfig_Settings_typ Config;
	struct CfgGetEthConfigMode GetMode;
	struct CfgSetEthConfigMode SetMode;
	struct CfgGetIPAddr GetIPAddr;
	struct CfgSetIPAddr SetIPAddr;
	struct CfgGetSubnetMask GetSubnetMask;
	struct CfgSetSubnetMask SetSubnetMask;
	struct CfgGetDefaultGateway GetGateway;
	struct CfgSetDefaultGateway SetGateway;
	struct CfgGetHostName GetHostName;
	struct CfgSetHostName SetHostName;
	struct CfgGetInaNode GetInaNode;
	struct CfgSetInaNode SetInaNode;
	struct CfgGetMacAddr GetMacAddress;
} IPConfig_Internal_typ;

typedef struct IPConfig
{
	/* VAR_INPUT (analog) */
	plcstring INADeviceName[81];
	unsigned long IPMode;
	plcstring IPAddress[17];
	plcstring SubnetMask[17];
	plcstring DefaultGateway[17];
	plcstring HostName[81];
	unsigned char INANode;
	/* VAR_OUTPUT (analog) */
	plcstring MacAddress[17];
	/* VAR (analog) */
	struct IPConfig_Internal_typ internal;
	/* VAR_INPUT (digital) */
	plcbit Refresh;
	plcbit ResetToDefaults;
	/* VAR_OUTPUT (digital) */
	plcbit Valid;
} IPConfig_typ;

typedef struct WinShare
{
	/* VAR_INPUT (analog) */
	plcstring FileDevice[21];
	plcstring IPAddress[16];
	plcstring ShareName[21];
	plcstring UserName[21];
	plcstring Password[21];
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	plcstring tempString[251];
	struct DevUnlink DevUnlink_0;
	struct DevLink DevLink_0;
	plcstring intipAddress[16];
	/* VAR_INPUT (digital) */
	plcbit Enable;
} WinShare_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void IPConfig(struct IPConfig* inst);
_BUR_PUBLIC void WinShare(struct WinShare* inst);


#ifdef __cplusplus
};
#endif
#endif /* _IPCFGLIB_ */

