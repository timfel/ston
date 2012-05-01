*ston-core
stonOn: stonWriter
	"Encode non-variable classes with a map of their instance variable and values.
	Override to customize and add a matching #fromSton: (see implementors)."

	stonWriter writeObject: self streamMap: [ :dictionary |
		self class allInstanceVariableNames do: [ :each |
			dictionary at: each asSymbol put: (self instVarAt: each) ] ]