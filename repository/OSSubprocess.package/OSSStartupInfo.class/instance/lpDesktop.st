accessing structure variables
lpDesktop
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPDESKTOP) type: ExternalType void asPointerType