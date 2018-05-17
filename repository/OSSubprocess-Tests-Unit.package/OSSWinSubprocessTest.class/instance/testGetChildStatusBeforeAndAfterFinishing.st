tests - child status
testGetChildStatusBeforeAndAfterFinishing
	| command | 
	command := self newCommand 
				command: 'timeout';
				arguments: {'3'}.
	
	command run. 
	self assert: command pid > 0.
	(Duration seconds: 1) wait.

	self deny: command isComplete.
	self assert: command isRunning.
	command waitForExit.

	self assert: command exitStatusInterpreter exitStatus equals: 0.
	self assert: command isComplete.
	