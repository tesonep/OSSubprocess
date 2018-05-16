private
cwdBufferSize
	^ self ffiGetCurrentDirectoryInto: ExternalObject null size: 0