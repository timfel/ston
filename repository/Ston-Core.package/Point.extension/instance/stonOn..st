*ston-core
stonOn: stonWriter
	stonWriter writeObject: self streamShortList: [ :array |
		array add: self x; add: self y ]