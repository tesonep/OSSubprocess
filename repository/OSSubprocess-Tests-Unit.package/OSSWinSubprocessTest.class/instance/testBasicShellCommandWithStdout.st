tests - shell
testBasicShellCommandWithStdout

	self newCommand
		shellCommand: 'dir "', Smalltalk image imagePath, '"';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			self assert: (outString includesSubstring: Smalltalk image imagePath).						
		]
		 
