*ston-core
asHexDigits: nDigits padded: aString

	| str stream |
	str := self asHex.
	stream := StringStream on: String new.
	1 to: nDigits - str size do: [:index | stream nextPut: aString ].
	stream nextPutAll: str.
	^stream contents