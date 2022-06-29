/* Automation Studio generated header file */
/* Do not edit ! */
/* ShuvSafety 0.01.4 */

#ifndef _SHUVSAFETY_
#define _SHUVSAFETY_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _ShuvSafety_VERSION
#define _ShuvSafety_VERSION 0.01.4
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "SfDomain.h"
		#include "Shuv.h"
#endif
#ifdef _SG4
		#include "SfDomain.h"
		#include "Shuv.h"
#endif
#ifdef _SGC
		#include "SfDomain.h"
		#include "Shuv.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum shuvsafeST_enum
{	shuvsafeST_INIT,
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
} shuvsafeST_enum;

typedef enum shuvsafeERR_enum
{	shuvsafeERR_CONNECT,
	shuvsafeERR_TRANSFER,
	shuvsafeERR_INFO,
	shuvsafeERR_COMPLETION
} shuvsafeERR_enum;

typedef struct ShuvSafetyInCmd_typ
{	plcbit installUpdate;
	plcbit acknowledgeError;
} ShuvSafetyInCmd_typ;

typedef struct ShuvSafetyInPar_typ
{	unsigned long pShadow;
	unsigned long pInterface;
	plcbit safeApplicationRunning;
} ShuvSafetyInPar_typ;

typedef struct ShuvSafetyInCfg_typ
{	plcbit active;
	unsigned long pSfDomain;
	plcstring safetyUsername[81];
	plcstring safetyPassword[81];
	plcstring safeApplication[81];
} ShuvSafetyInCfg_typ;

typedef struct ShuvSafetyIn_typ
{	struct ShuvSafetyInCmd_typ cmd;
	struct ShuvSafetyInPar_typ par;
	struct ShuvSafetyInCfg_typ cfg;
} ShuvSafetyIn_typ;

typedef struct ShuvSafetyOut_typ
{	plcbit error;
	signed long errorId;
	plcstring errorString[81];
	plcbit initialized;
	plcstring status[81];
	unsigned char transferProgress;
	plcbit updateAvailable;
	plcbit updating;
	struct SfDomainInfoType postUpdateInfo;
	struct SfDomainInfoType preUpdateInfo;
} ShuvSafetyOut_typ;

typedef struct ShuvSafetyInternalFub_typ
{	struct SfDomainConnect connect;
	struct SfDomainTransfer transfer;
	struct SfDomainInfo info;
	struct SfDomainCompletion completion;
} ShuvSafetyInternalFub_typ;

typedef struct ShuvSafetyInternal_typ
{	struct ShuvSafetyInternalFub_typ fub;
	enum shuvsafeST_enum state;
	enum shuvsafeST_enum stateTrace[100];
	struct ShuvSafetyInCmd_typ cmd;
	enum shuvsafeST_enum lastState;
} ShuvSafetyInternal_typ;

typedef struct ShuvSafety_typ
{	struct ShuvSafetyIn_typ in;
	struct ShuvSafetyOut_typ out;
	struct ShuvSafetyInternal_typ internal;
} ShuvSafety_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC plcbit ShuvSafetyCyclic(struct ShuvSafety_typ* shuvSafety);


#ifdef __cplusplus
};
#endif
#endif /* _SHUVSAFETY_ */

