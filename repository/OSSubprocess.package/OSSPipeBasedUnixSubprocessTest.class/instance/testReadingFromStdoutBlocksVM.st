tests - streams
testReadingFromStdoutBlocksVM
	| command customStream | 
	customStream := OSSSystemAccessor current makeBlockingPipe.
	command := self newCommand
					command: '/bin/sleep';
					arguments: (Array with: '4');
					stdoutStream: customStream.
	
	command run. 
	self assert:[ command stdoutStream upToEnd ] timeToRun seconds > 2. 
	