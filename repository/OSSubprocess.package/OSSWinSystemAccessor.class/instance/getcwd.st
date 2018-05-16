cwd
getcwd
	| size buffer returnCode |
	size := self cwdBufferSize.
	buffer := Win32WideString new: size.

	returnCode := self ffiGetCurrentDirectoryInto: buffer size: size.
	self reportErrorIfZero: returnCode.
	
	^ buffer asString.