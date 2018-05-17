childs management
updateActiveChildrenAndNotifyDead
	"Test each active child for its completion status and update exitStatus
	accordingly. This method may be called when a semaphore is set indicating that
	some child OSProcess has died (for example, from the child watcherer).
	It will also notify the dead child so that particular actions can be taken."

	self activeChildren do:
		[:child | child queryExitStatus.
				child isComplete ifTrue: [ 
					child processHasExitNotification.
				 ]
		 ]
