as yet unclassified
externalEmpty
	| obj |
	obj := self externalNew.
	obj autoRelease.

	"I initialize the struct with zeros."
	LibC uniqueInstance memset: obj getHandle to: 0 size: self byteSize.

	^ obj.