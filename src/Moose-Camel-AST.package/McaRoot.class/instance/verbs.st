accessing
verbs
	| aVisitor |
	aVisitor := McaNodeVerbVisitor new.
	self accept: aVisitor.
	^ aVisitor verbs