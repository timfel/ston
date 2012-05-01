*ston-core
fromSton: stonReader
	stonReader parseListDo: [ :each :index |
		index = 1 ifTrue: [ self x: each ].
		index = 2 ifTrue: [ self y: each ] ]