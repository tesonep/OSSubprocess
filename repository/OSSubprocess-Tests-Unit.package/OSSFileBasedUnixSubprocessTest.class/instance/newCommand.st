helpers
newCommand
	| command |
	command := super newCommand.
	command defaultReadStreamCreationBlock: [ OSSUnixSubprocess createTempFileToBeUsedAsReadStreamOn: '/tmp' ].
	command defaultWriteStreamCreationBlock: [ OSSUnixSubprocess createTempFileToBeUsedAsWriteStreamOn: '/tmp' ].
	^ command 
	