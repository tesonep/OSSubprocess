accessing structure variables
hProcess
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_HPROCESS) type: ExternalType void asPointerType