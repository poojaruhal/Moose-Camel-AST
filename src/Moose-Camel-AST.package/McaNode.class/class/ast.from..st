instance creation
ast: aTerminalCollection from: aParseString
	"get an ast from parse string"
	<return: #NlpRoot>

	^ aParseString trim
		ifEmpty: [ McaRoot new ]
		ifNotEmpty: [ :aTrimmedParseString |
			| parseTree aRoot  aTerminalStack |
			
			[ parseTree := McaParseGrammar new parse: aTrimmedParseString ]
				on: Exception do: [ :e | parseTree := #() ].

			aRoot := McaNonTerminal labelled: parseTree first.
			aTerminalStack := aTerminalCollection as: Stack.

			parseTree allButFirstDo: [ :aSubTree |
				self buildTreeOf: aRoot and: aTerminalStack from: aSubTree ].

			aRoot ]