tests
testTime
	| time |
	time := Time hour: 6 minute: 30 second: 15.
	self assert: (self serialize: time) = 'Time[''06:30:15'']'.
	"GemStone does not represent time with any finer resolution than seconds"
	"
	time := Time hour: 6 minute: 30 second: 15 nanoSecond: 1.
	self assert: (self serialize: time) = 'Time[''06:30:15.000000001'']'
	"