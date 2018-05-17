running
freeHandlers
	processInfo ifNil: [ ^ self ].
	processInfo hProcess isNull
		ifFalse: [ Kernel32Lib uniqueInstance ffiCloseHandler: processInfo hProcess.
			processInfo hProcess: ExternalObject null ].
	processInfo hThread isNull
		ifFalse: [ Kernel32Lib uniqueInstance ffiCloseHandler: processInfo hThread.
			processInfo hThread: ExternalObject null ].
	processInfo := nil