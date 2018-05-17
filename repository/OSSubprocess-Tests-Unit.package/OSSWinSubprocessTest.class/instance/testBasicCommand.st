tests - basic
testBasicCommand
	| command |
	command := self newCommand 
					command: 'cmd';
					arguments: { '/c'. 'dir' }.
	command runAndWait.
	