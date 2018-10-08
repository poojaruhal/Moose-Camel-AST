api - accessing
withAllNodes
	<return: #Collection of: #McaNode>

	^ Array streamContents: [ :aStream | self allNodesDo: [ :aNode | aStream nextPut: aNode ] ]