
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
	
	// Call all FUBs cyclically. 
	ShuvCyclic(shuv);
	Diagnose(diag);
	FIOManageFn_Cyclic(fioManage);
	
	// Customizable logic to determine when updating is allowed (i.e. while machine is stopped, overnight, etc). 
	updateMgr.updateAllowed := TRUE; // ((gMachine.OUT.State = MACH_ST_ABORTED OR gMachine.OUT.State = MACH_ST_STOPPED));
	updateMgr.ignoreUpdate := updateMgr.ignoreUpdate AND (updateMgr.updateVersion = shuv.out.updateInfo.version);
	updateMgr.updateVersion := shuv.out.updateInfo.version;
	updateMgr.updateAvailable := (((shuv.out.updateAvailable AND NOT updateMgr.ignoreUpdate) OR shuv.out.updating) AND (updateMgr.updateAllowed));
	
	// For the lights off demo system, update automatically.
	IF ((updateMgr.updateAllowed) AND (updateMgr.updateAvailable)) THEN
		updateMgr.confirmUpdate := TRUE; // LEt's go!
	END_IF
	
	// Reset commands. 
	shuv.in.cmd.installUpdate := 0;
	shuv.in.cmd.acknowledgeError := 0;	
	fioManage.IN.CMD.AcknowledgeError := 0;
	fioManage.IN.CMD.DeleteAll := 0;
	fioManage.IN.CMD.Scan := 0;
	 
END_PROGRAM

