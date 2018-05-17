tests - child status
testGetChildStatusAfterFinishesMultipleTimes
	| command | 
	command := self newCommand
					shellCommand: 'dir'.
	
	command run. 
	self assert: command pid > 0.
	command waitForExit.
	"Just wanted to be sure there is no problem calling waitpid() multiple times"
	command queryExitStatus.
	command queryExitStatus.
	command queryExitStatus.
	command queryExitStatus.
	
	self assert: command exitStatusInterpreter exitStatus equals: 0. 
	self assert: command isSuccess.
	self assert: command isComplete.
	self deny: command isRunning