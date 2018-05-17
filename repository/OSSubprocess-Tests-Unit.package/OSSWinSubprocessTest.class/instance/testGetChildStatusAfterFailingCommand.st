tests - child status
testGetChildStatusAfterFailingCommand
	| command | 
	command := self newCommand
					shellCommand: 'dir whatever'.
	command run.
	self assert: command pid > 0.
	command waitForExit.
	command queryExitStatus.
	self assert: command exitStatusInterpreter exitStatus >  0. 
	self deny: command isSuccess.
	self assert: command isComplete.
	self deny: command isRunning