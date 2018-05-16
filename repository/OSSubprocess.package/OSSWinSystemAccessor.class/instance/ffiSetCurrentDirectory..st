accessing
ffiSetCurrentDirectory: path
	"If the function succeeds, the return value is nonzero.
	If the function fails, the return value is zero. To get extended error information, call GetLastError.
	The function expects a Win32WideString"
	^ self ffiCall: #(BOOL SetCurrentDirectoryW(LPCTSTR path))