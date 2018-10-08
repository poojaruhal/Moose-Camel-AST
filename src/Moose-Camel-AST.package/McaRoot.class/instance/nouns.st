accessing
nouns
	| aVisitor |
	aVisitor := McaNodeNounVisitor new.
	self accept: aVisitor.
	^ aVisitor nouns