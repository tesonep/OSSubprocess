private
performTest
	OSPlatform current isWindows ifTrue: [ self skip ]. 
	^ super performTest.