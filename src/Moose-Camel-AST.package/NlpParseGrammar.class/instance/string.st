accessing
string
	^ (#space asParser / { $( . $) } asParser) negate plus flatten ==> #asSymbol