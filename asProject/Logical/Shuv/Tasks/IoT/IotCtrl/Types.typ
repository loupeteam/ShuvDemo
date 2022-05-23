
TYPE
	Update_Manager_typ : 	STRUCT 
		dialogClosed : BOOL;
		acknowledged : BOOL;
		confirmUpdate : BOOL;
		ignoreUpdate : BOOL;
		status : STRING[400];
		updateVersion : STRING[200];
		updateAvailable : BOOL;
		updateAllowed : BOOL;
	END_STRUCT;
END_TYPE
