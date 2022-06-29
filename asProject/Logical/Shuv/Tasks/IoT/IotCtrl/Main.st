
PROGRAM _INIT	
	
	// Create the logger that will be used by Shuv. 
	createLogInit(iotLOGGER_NAME, 1000000, arEVENTLOG_PERSISTENCE_VOLATILE);
	
	// Configure the Shuv block. 
	shuv.in.cfg.active := TRUE;
	shuv.in.par.pResponseData := ADR(fileData); // buffer containing contents of the installer file
	shuv.in.par.responseDataSize := SIZEOF(fileData); // max size of the installer file
	shuv.in.cfg.fileDevice := iotUPDATE_DEVICE; // where the installer files will get placed
	shuv.in.cfg.loggerName := iotLOGGER_NAME;
	shuv.in.cfg.applicationVersion := versionId; // version of built software on the PLC
	shuv.in.cfg.pipelineName := iotPIPELINE;
	shuv.in.cfg.organizationName := iotORGANIZATION;
	shuv.in.cfg.claimCredentials.rootCAFilename := '//CS:EXT/root-certificate.pem'; // path of the root CA (default points to certificate store)
	shuv.in.cfg.claimCredentials.certificateFilename := '//CS:OWN/claim-certificate.pem.crt'; // path of the device's certificate (default points to certificate store)
	shuv.in.cfg.claimCredentials.privateKeyFilename := '//CS:KEY/claim-private.pem.key'; // path of the device's private key (default points to certificate store)	
	
	// Configure the ShuvSafety block. 
	shuvSafety.in.cfg.active := TRUE;
	shuvSafety.in.cfg.pSfDomain := ADR(gSafeDomain);
	shuvSafety.in.cfg.safeApplication := 'SdProject.sfapp';
	shuvSafety.in.cfg.safetyPassword := 'password';
	shuvSafety.in.cfg.safetyUsername := 'Admin';
	
	// Initialize the Shuv tunnel.
	ShuvInit(shuv);
	
	// Configure the diagnostic block. 
	diag.in.cfg.host := 'google.com';
	diag.in.cfg.timeout_ms := 200;
	
	updateMgr.dialogClosed := TRUE;				
	
	fioManage.IN.CMD.Scan := TRUE;
	fioManage.IN.PAR.Directory := 'Installers';
	fioManage.IN.PAR.FileDevice := iotUPDATE_DEVICE;
	fioManage.IN.PAR.ItemName := '*';
	fioManage.IN.PAR.MaxNumItems := iotMAX_NUM_VERSIONS;
	fioManage.IN.PAR.Mode := fiDIRECTORY;
	
END_PROGRAM

PROGRAM _CYCLIC

	// Logic for handling the HMI integration with the update. 
	HmiDialog;	
	
	shuvSafety.in.cmd.acknowledgeError := diReset;
	shuvSafety.in.par.pShadow := shuv.out.pShadow;
	shuvSafety.in.par.pInterface := shuv.out.pInterface;
	shuvSafety.in.par.safeApplicationRunning := gSafety.in.safePlcOk AND gSafety.in.safeApplicationRunning;
	
	shuv.in.cmd.installUpdate := diConfirmUpdate;
	shuv.in.cmd.acknowledgeError := diReset;
	shuvSafety.in.cmd.installUpdate := diConfirmSafetyUpdate;
	
	// Call all FUBs cyclically. 
	ShuvCyclic(shuv);
	ShuvSafetyCyclic(shuvSafety);
	Diagnose(diag);
	FIOManageFn_Cyclic(fioManage);
	
	IF (shuv.out.updating) THEN
		gLedCtrl.mode := keyringLED_MODE_ROTATE;
		gLedCtrl.color := keyringLED_COLOR_WHITE;
	ELSIF (shuvSafety.out.updating) THEN
		gLedCtrl.mode := keyringLED_MODE_ROTATE;
		gLedCtrl.color := keyringLED_COLOR_YELLOW;
	ELSE
		gLedCtrl.mode := keyringLED_MODE_DIRECT;
		IF ((shuv.out.updateAvailable) AND (blink)) THEN
			gLedCtrl.led[4] := keyringLED_COLOR_WHITE;
		ELSE
			gLedCtrl.led[4] := keyringLED_COLOR_OFF;
		END_IF
		IF ((shuvSafety.out.updateAvailable) AND (blink)) THEN
			gLedCtrl.led[3] := keyringLED_COLOR_YELLOW;
		ELSE
			gLedCtrl.led[3] := keyringLED_COLOR_OFF;
		END_IF
	END_IF	
	
	// Reset commands. 
	shuv.in.cmd.installUpdate := 0;
	shuv.in.cmd.acknowledgeError := 0;	
	fioManage.IN.CMD.AcknowledgeError := 0;
	fioManage.IN.CMD.DeleteAll := 0;
	fioManage.IN.CMD.Scan := 0;
	
	// Blink timer utility. 
	blinkTimer.IN := TRUE;
	blinkTimer.PT := T#750ms;
	IF (blinkTimer.Q) THEN
		blinkTimer.IN := FALSE;
		blink := NOT blink;
	END_IF
	blinkTimer();
	 
END_PROGRAM

