initialize - release
initialize
	super initialize.
	
	mutexForCwd := Semaphore forMutualExclusion.
	systemAccessor := OSPlatform current systemAccessor. 
	pid := systemAccessor getPid.

	self initializeAllMyChildren.
	childListTreshold := 20. "Once child list gets bigger than this number, we delete all exited processes"	
	
	self initializeSessionID.
