tests - child status
testGetChildStatusAfterFailingCommand
	| command | 
	
	command := self newCommand
					command: '/bin/ls';
					arguments: {'whatever'}.
	command run.
	self assert: command childPid > 0.
	command waitForChild.
	command queryExitStatus.
	self assert: command exitStatusInterpreter exitStatus equals: 1. 
	self deny: command succeeded.
	self assert: command completed.
	self deny: command isRunning.