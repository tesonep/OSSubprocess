initialize - release
initializeChildWatcher
	"This is a process which waits for the death of a child processes."

	| aDelay |
	aDelay := Delay forMilliseconds: 500.
	childWatcher	 ifNil: [
		childWatcher := [[
				aDelay wait. "Avoids lost signals in heavy process switching"
				self updateActiveChildrenAndNotifyDead.
				] repeat] newProcess priority: Processor highIOPriority.

		childWatcher resume.
		"name selected to look reasonable in the process browser"
		childWatcher name: ((ReadStream on: childWatcher hash asString) next: 5)
				, ': the OSSubprocess child watcher'
	]
