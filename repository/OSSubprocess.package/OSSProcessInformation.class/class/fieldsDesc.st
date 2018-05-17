field definition
fieldsDesc
	"
		self rebuildFieldAccessors.
	"
	^ #(
  HANDLE hProcess;
  HANDLE hThread;
  DWORD  dwProcessId;
  DWORD  dwThreadId;	
)