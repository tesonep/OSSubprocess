as yet unclassified
lsCommand
	OSPlatform current isWindows
		ifTrue: [ ^ 'cmd /C dir' ]
		ifFalse: [ ^ '/bin/ls' ]