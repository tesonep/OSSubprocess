tests - child status
testGetChildStatusBeforeAndAfterFinishing
	| command | 
	
	command := OSSSpawnProcess new 
				command: '/bin/sleep';
				arguments: {'2'}.
	
	self shouldnt: [ command run ] raise: Error. 
	command childPid > 0.
	(Duration seconds: 1) wait.
	self assert: command queryExitStatus isNil.
	self deny: command completed.
	self assert: command isRunning.
	(Duration seconds: 2) wait.
	self assert: command queryExitStatus isNil not.
	self assert: command exitStatusInterpreter exitStatus equals: 0.
	self assert: command completed.
	