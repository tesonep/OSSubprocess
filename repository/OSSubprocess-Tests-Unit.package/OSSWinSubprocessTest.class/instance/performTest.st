private
performTest
	OSPlatform current isWindows ifFalse: [ self skip ]. 
	^ super performTest.