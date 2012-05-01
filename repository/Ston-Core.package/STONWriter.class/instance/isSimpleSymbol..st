private
isSimpleSymbol: symbol
	^ (symbol class 
		findFirstInString: symbol 
		inSet: self class stonSimpleSymbolCharacters 
		startingAt: 1) = 0
