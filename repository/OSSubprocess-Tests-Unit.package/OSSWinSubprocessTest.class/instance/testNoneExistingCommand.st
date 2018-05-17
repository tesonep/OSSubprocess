tests - basic
testNoneExistingCommand
	| command stdout stderr | 
	
	command := self newCommand
					command: 'whatever'.

	[ command runAndWait ] on: Error do: [  :ex | 
		self assert: (ex printString includesSubstring: 'The system cannot find the file') .
		self assert: command pid isNil.
		^ nil
	].
	
	self assert: command exitStatusInterpreter exitStatus > 0.
