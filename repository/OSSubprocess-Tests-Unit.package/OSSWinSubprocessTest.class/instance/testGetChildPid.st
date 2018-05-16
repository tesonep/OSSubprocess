tests
testGetChildPid
	| command | 
	
	command := self newCommand 
					command: 'timeout';
					arguments: {'2'}.
	
	command run.
	self assert: command pid > 0.
	command waitForExit. 