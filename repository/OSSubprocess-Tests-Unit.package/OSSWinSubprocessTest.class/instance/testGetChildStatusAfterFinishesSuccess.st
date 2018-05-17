tests - child status
testGetChildStatusAfterFinishesSuccess
	| command | 
	command := self newCommand
					shellCommand: 'dir'.
	
	command run. 
	self assert: command pid > 0.
	command waitForExit.
	command queryExitStatus.
	self assert: command exitStatusInterpreter exitStatus equals: 0. 
	self assert: command isSuccess.
	self assert: command isComplete.
	self deny: command isRunning