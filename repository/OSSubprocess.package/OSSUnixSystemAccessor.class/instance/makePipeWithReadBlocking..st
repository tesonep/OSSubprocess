pipes
makePipeWithReadBlocking: aBoolean
	"Creates a pipe in the underlying OS and answers an instance of a OSSPipe"
	| pipePointer returnValue fileDescriptors pipe fileIDsArray fileDescriptor1 fileDescriptor2 |
	pipePointer := ExternalAddress allocate: 8.
	[
		"We created the pipes ourselves and the answer is an array of file descriptors."
		returnValue := self primitivePipe: pipePointer.	
		(returnValue = -1) ifTrue: [ self perror: 'pipe()' ]. 
		fileIDsArray := Array new: 2.
		fileDescriptor1 := pipePointer nbUInt32AtOffset: 0.
		fileDescriptor2 := pipePointer nbUInt32AtOffset: 4.
		"We then have to create our own sqFile structures as that is what OSSAttachableFileStream name:attachTo:writable: expects. For that we use the primitiveFileOpenUseFileDescriptor:writeFlag:"
		fileIDsArray at: 1 put: (self primitiveFileOpenUseFileDescriptor: fileDescriptor1 writeFlag: false).
		fileIDsArray at: 2 put: (self primitiveFileOpenUseFileDescriptor: fileDescriptor2 writeFlag: true).
		pipe := OSSPipe newWith: fileIDsArray readBlocking: aBoolean. 
	] ensure:[
		pipePointer free.
	].
	^ pipe
 
"
===================== OLD CODE  ====================
We use OSProcess primitive primCreatePipe which directly answers an array of sqFile structs
	specifially created for them. This way we avoid all the sqFile creation and management at image side. 	
| fileIDsArray |
	fileIDsArray := self primCreatePipe.
	^ OSSPipe newWith: fileIDsArray readBlocking: aBoolean. 
===================== OLD CODE  ====================	
"