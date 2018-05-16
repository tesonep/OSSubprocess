baseline
baseline: spec
	<baseline>
	spec
		for: #pharo
		do: [ 
			spec preLoadDoIt: #initializeForPharo.	

			spec baseline: 'PharoWin32' with: [
    			spec repository: 'github://tesonep/pharo-com:master';
			        loads: 'core' ].
				
			spec
				package: 'OSSubprocess' with: [ spec requires: #('FFICHeaderExtractor' 'PharoWin32') ];
				package: 'OSSubprocess-Tests-Unit' with: [ spec requires: 'OSSubprocess' ];
				package: 'OSSubprocess-Tests-Stress' with: [ spec requires: 'OSSubprocess-Tests-Unit' ].
			
			spec baseline: 'FFICHeaderExtractor' with: [
    			spec repository: 'github://marianopeck/FFICHeaderExtractor:master/repository' ]
		]