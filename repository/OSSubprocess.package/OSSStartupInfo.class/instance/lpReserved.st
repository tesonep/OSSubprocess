accessing structure variables
lpReserved
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPRESERVED) type: ExternalType void asPointerType