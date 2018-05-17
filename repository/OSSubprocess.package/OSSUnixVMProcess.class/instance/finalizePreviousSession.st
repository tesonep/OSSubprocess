initialize - release
finalizePreviousSession	
	super finalizePreviousSession.
	
	sigChldSemaphore ifNotNil: [
		self systemAccessor restoreSigChld.
		sigChldSemaphore := nil
	]
