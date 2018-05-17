running
internalRun
	| startupInfo nullObject returnCode |
	processInfo := OSSProcessInformation externalEmpty.
	startupInfo := OSSStartupInfo externalEmpty.
	nullObject := ExternalObject null.

	returnCode := self
		ffiCreateProcessName: nullObject
		commandLine: self buildCommandLine
		processAttributes: nullObject
		threadAttributes: nullObject
		inheritHandles: shareStdHandlers
		creationFlags: 0
		environment: nullObject getHandle
		currentDirectory: nullObject
		startupInfo: startupInfo getHandle
		processInformation: processInfo getHandle.
		
	self reportErrorIfZero: returnCode.
	
	pid := processInfo dwProcessId.
	
	OSSVMProcess vmProcess registerChildProcess: self.