private
newlineIndent
	prettyPrint ifTrue: [ 
		writeStream nextPut: String cr.
		level timesRepeat: [ StringStream tab ] ]
