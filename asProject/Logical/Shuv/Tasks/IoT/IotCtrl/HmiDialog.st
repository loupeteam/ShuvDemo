
ACTION HmiDialog: 
	
	// When a new update is available (and hasn't been dismissed or displayed yet), prompt the user. 
	IF ((updateMgr.updateAvailable) AND (updateMgr.dialogClosed) AND (NOT updateMgr.acknowledged)) THEN
		updateMgr.dialogClosed := FALSE;
		// TODO: fill in with custom HMI prompt logic.
		// MessageBox_AddMsg(ADR('<center><strong>Software Update</strong>:<br><br>A new software version is available for your machine. Do you want to install it now?</center>'),ADR('Yes'),ADR(updateMgr.confirmUpdate),ADR('No'),ADR(updateMgr.ignoreUpdate));
	END_IF
	
	// If the user presses 'Yes', the update process is started. 
	IF (updateMgr.confirmUpdate) THEN
		updateMgr.confirmUpdate := FALSE;
		shuv.in.cmd.installUpdate := TRUE;
		// TODO: fill in with custom HMI status logic. 
		// MessageBox_AddMsg(ADR(updateMgr.status),0,0,0,0);
	END_IF
	
	// If the user presses 'No', the update is ack'd and no longer shown on the HMI. 
	IF (updateMgr.ignoreUpdate) THEN
		updateMgr.ignoreUpdate := FALSE;
		updateMgr.dialogClosed := TRUE;
		updateMgr.acknowledged := TRUE;
	END_IF
	
	// TODO: apply desired formatting to the Shuv status string.
	// updateMgr.status := '<center>';
	// brsstrcat(ADR(updateMgr.status), ADR(shuv.out.status));
	// brsstrcat(ADR(updateMgr.status), ADR('</center>'));

END_ACTION
