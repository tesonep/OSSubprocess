status
isComplete
	^ exitCode notNil and: [ exitCode ~= 259 "STILL_ACTIVE" ].