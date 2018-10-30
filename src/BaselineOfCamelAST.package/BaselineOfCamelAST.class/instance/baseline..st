baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'PetitParser' with: [
			spec 
				className: #ConfigurationOfPetitParser;
				versionString: #'stable';
				repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/';
				load ].
		spec package: #'Moose-Camel-AST' with: [ spec requires: #(PetitParser) ].		
		spec group: 'default' with: #('Moose-Camel-AST') ]