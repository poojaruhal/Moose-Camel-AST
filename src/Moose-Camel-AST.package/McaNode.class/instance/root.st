api - accessing
root
	<return:#McaNode>
	
	^ self hasParent 
		ifTrue:[self parent root]
		ifFalse:[self]
		
	