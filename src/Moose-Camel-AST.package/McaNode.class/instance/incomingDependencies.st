api - dependencies
incomingDependencies
	<return: #Collection of: #McaDependency>

	^ dependencies select: [ :aDependency | aDependency targetNode = self ] 