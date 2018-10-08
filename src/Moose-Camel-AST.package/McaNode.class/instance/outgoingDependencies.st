api - dependencies
outgoingDependencies
	<return: #Collection of: #McaDependency>

	^ dependencies select: [ :aDependency | aDependency sourceNode = self ] 