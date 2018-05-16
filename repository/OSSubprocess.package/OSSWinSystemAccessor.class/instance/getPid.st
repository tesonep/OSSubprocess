accessing
getPid
	^ self ffiCall: #(DWORD GetCurrentProcessId(void))