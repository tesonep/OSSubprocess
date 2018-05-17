as yet unclassified
sleepCommand
	OSPlatform current isWindows
		ifTrue: [ ^ 'cmd /c timeout' ]
		ifFalse: [ ^ '/bin/sleep' ]