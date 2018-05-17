accessing
printOn: aStream
	aStream
		nextPutAll: 'normal termination with status ';
		nextPutAll: self value asString