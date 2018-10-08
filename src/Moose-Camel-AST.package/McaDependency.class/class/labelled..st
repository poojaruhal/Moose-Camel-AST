instance creation
labelled: aString
	"Return a new dependency instance that corresponds to the given label"
	<return:  #McaDependency>
	
	^ (self dependencyClassLabelled: aString) new