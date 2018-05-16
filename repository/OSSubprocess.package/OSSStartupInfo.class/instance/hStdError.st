accessing structure variables
hStdError
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_HSTDERROR) type: ExternalType void asPointerType