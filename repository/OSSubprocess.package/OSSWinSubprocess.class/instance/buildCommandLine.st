private
buildCommandLine
	^ (({command} , arguments) joinUsing: ' ') asWin32WideString  