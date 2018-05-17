tests - shell
testCustomShellWithStdout

	self newCommand
		shell: 'cmd.exe' command: 'dir "', Smalltalk image imagePath, '"';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			self assert: (outString includesSubstring: Smalltalk image imagePath).					
		]
		 
