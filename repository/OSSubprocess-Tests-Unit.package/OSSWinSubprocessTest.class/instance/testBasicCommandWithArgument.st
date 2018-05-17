tests - basic
testBasicCommandWithArgument
	| command | 
	
	command := self newCommand
					command: 'attrib';
					arguments: { Smalltalk image imagePath. }.
	
	command runAndWait