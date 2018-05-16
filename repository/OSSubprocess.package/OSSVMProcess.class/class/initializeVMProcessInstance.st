initialize - release
initializeVMProcessInstance
	VMProcess isNil 
		ifTrue: [ VMProcess := OSPlatform current vmProcessClass basicNew. ]
		ifFalse: [ VMProcess finalizePreviousSession ].
	VMProcess initialize.