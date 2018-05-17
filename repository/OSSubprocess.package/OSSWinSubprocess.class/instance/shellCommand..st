accessing
shellCommand: aShellCommandString 
	command := Smalltalk platform environment at: 'SHELL' ifAbsent: ['cmd'].
	arguments := Array with: '/c' with: aShellCommandString. 