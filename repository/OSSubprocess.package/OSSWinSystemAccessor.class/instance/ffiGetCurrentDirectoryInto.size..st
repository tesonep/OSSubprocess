accessing
ffiGetCurrentDirectoryInto: buffer size: size
	"If the function succeeds, the return value specifies the number of characters that are written to the buffer, not including the terminating null character.
If the function fails, the return value is zero. To get extended error information, call GetLastError.
If the buffer that is pointed to by lpBuffer is not large enough, the return value specifies the required size of the buffer, in characters, including the null-terminating character.
If the buffer is NULL the and size is 0, the function returns the required buffer size.
The function expects a Win32WideString as buffer.
"
	^ self ffiCall: #(DWORD GetCurrentDirectoryW(DWORD size, LPTSTR buffer))