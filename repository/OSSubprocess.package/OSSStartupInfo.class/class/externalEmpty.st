as yet unclassified
externalEmpty
	| obj |
	obj := self externalNew.
	obj autoRelease.

	"I initialize the struct with zeros and set the struct size in the cb field"
	LibC uniqueInstance memset: obj getHandle to: 0 size: self byteSize.
	obj cb: self byteSize.

	^ obj.