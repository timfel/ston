class initialization
initializeSTONSimpleSymbolCharacters
	"stonSimpleSymbolCharacters asArray collectWithIndex: [ :each :index |
		each isZero ifTrue: [ (index - 1) asCharacter ] ]."
		
	stonSimpleSymbolCharacters := Array new: 256.
	1 to: 256 do: [ :each | | char |
		char := (each - 1) asCharacter.
		(self isSimpleSymbolChar: char)
			ifTrue: [ stonSimpleSymbolCharacters at: each put: 0 ]
      ifFalse: [ stonSimpleSymbolCharacters at: each put: 1 ] ]

