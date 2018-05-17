running
ffiGetExitCodeIn: lpExitCode for: hProcess.
	self ffiCall: #(BOOL GetExitCodeProcess(HANDLE  hProcess, LPDWORD lpExitCode))