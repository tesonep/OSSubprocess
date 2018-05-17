tests - child status
testGetChildPid
	| command | 
	
	command := self newCommand 
					command: 'ipconfig'.
	
	command run.
	self assert: command pid > 0.
	command waitForExit. 