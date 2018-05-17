running
ffiCreateProcessName: applicationName commandLine: commandLine processAttributes: processAttributes threadAttributes: threadAttributes inheritHandles: inheritHandles creationFlags: creationFlags environment: environment currentDirectory: currentDirectory startupInfo: startupInfo processInformation: processInformation

	self ffiCall: #(int CreateProcessW(
	  LPCTSTR               applicationName,
	  LPTSTR                commandLine,
	  LPSECURITY_ATTRIBUTES processAttributes,
	  LPSECURITY_ATTRIBUTES threadAttributes,
	  BOOL                  inheritHandles,
	  DWORD                 creationFlags,
	  LPVOID                environment,
	  LPCTSTR               currentDirectory,
	  LPSTARTUPINFO         startupInfo,
	  LPPROCESS_INFORMATION processInformation
	))