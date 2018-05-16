running
run
	"Main method for spwaning the process. It starts the subprocess but
	it does not wait for child. There are others high end API for running the process,
	but they will all end up sending this message for starting the subprocess."
	self internalRun 