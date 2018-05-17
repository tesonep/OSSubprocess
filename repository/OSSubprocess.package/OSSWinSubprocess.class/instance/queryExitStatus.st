private
queryExitStatus
	| pointer returnCode |
	
	(processInfo isNil or: [ processInfo hProcess isNull ]) ifTrue: [ ^ exitCode ].
	
	pointer := LPDWORD new.
	returnCode := self ffiGetExitCodeIn: pointer for: processInfo hProcess.
	self reportErrorIfZero: returnCode.
	
	exitCode := pointer value.
	
	self isComplete ifTrue: [ self freeHandlers ].
	
	^ exitCode