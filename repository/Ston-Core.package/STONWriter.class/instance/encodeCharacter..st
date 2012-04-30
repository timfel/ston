private
encodeCharacter: chr
	| code encoding |
	((code := chr asciiValue) < 127 and: [ (encoding := self class stonCharacters at: code + 1) notNil ])
		ifTrue: [ 
			encoding = #pass
				ifTrue: [ writeStream nextPut: chr ]
				ifFalse: [ writeStream nextPutAll: encoding ] ]
		ifFalse: [ 
			writeStream nextPutAll: '\u'.
			writeStream nextPutAll: (code printPaddedWith: '0' to: 4 base: 16) ]