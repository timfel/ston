tests
testDate
	| date |
	date := Date fromString: '2012/01/01 00:00:00'.
	self assert: (self serialize: date) = 'Date[''2012-01-01'']'