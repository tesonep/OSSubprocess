accessing structure variables
hStdInput
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_HSTDINPUT) type: ExternalType void asPointerType