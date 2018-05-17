tests - shell
testBasicShellCommand
	| command | 
	
	command := self newCommand
					shellCommand: 'dir'.
	
	command runAndWait.
	