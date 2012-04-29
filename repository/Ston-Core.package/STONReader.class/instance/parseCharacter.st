parsing-internal
parseCharacter
	| char |
	(char := readStream next) = '\' 
		ifFalse: [ ^ char ].
	(#( '''' '"' '/' '\') includes: (char := readStream next))
		ifTrue: [ ^ char ].
	char = 'b'
		ifTrue: [ ^ String backspace ].
	char = 'f'
		ifTrue: [ ^ String newPage ].
	char = 'n'
		ifTrue: [ ^ String lf ].
	char = 'r'
		ifTrue: [ ^ String cr ].
	char = 't'
		ifTrue: [ ^ String tab ].
	char = 'u'
		ifTrue: [ ^ self parseCharacterHex ].
	self error: 'invalid escape character \' , (String with: char)
