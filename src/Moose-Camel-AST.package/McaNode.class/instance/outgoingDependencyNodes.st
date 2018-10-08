api - dependencies
outgoingDependencyNodes
	<return: #Collection of: #McaNode>

	^ self outgoingDependencies collect: [ :aDependency | aDependency targetNode ] 