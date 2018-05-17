status
exitStatusInterpreter
	^ exitCode ifNotNil: [ OSSWinProcessExitStatus for: exitCode ]