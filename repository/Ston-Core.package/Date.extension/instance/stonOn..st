*ston-core
stonOn: stonWriter
	"Use an ISO style YYYYMMDD representation: '2012-01-01'"
	
	"| stream |
	stream := StringWriter on: String new.
	stream nextPutAll: self year."
	stonWriter writeObject: self listSingleton: self asDateString