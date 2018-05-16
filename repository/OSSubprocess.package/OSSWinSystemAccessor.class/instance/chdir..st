cwd
chdir: aDirString
	| returnCode |
	"Changes the current working directory of the vmProcess to aDirString"
	
	returnCode := self ffiSetCurrentDirectory: aDirString asWin32WideString.
	self reportErrorIfZero: returnCode.
	
