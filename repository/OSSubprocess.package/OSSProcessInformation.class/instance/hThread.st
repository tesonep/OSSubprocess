accessing structure variables
hThread
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_HTHREAD) type: ExternalType void asPointerType