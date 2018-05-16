tests
testChangeDir
	| oldDir | 
	oldDir := self systemAccessor getcwd.
	
	OSSVMProcess vmProcess
		lockCwdWithValue: FileLocator temp resolve pathString
		during: [
			"Grrr in latest OSX /tmp is mapped to /private/tmp..."
			self assert: self systemAccessor getcwd equals: FileLocator temp resolve pathString.
		].
	self assert: self systemAccessor getcwd equals: oldDir
				