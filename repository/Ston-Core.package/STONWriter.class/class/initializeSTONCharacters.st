class initialization
initializeSTONCharacters
	| escapes |
	stonCharacters := Array new: 127.
	32 to: 126 do: [ :each | 
		stonCharacters at: each + 1 put: #pass ].
	escapes := #( 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 34 '\"' 39 '\''' 92 '\\' ).
	1 to: escapes size - 1 by: 2 do: [ :index | 
		stonCharacters 
			at: (escapes at: index) + 1
			put: (escapes at: index + 1) ]
	
