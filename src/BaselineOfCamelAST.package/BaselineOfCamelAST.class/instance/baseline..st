baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'PetitParser' with: [
			spec 
				className: #ConfigurationOfPetitParser;
				versionString: #'stable';
				repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/';
				loads: #(Core) ].
		spec project: 'Roassal2' with: [
			spec 
				className: #ConfigurationOfRoassal2;
				versionString: #'stable';
				repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/';
				loads: #(default) ].

		spec package: #'Moose-Camel-AST' with: [ spec requires: #(PetitParser Roassal2) ].		
		spec group: 'default' with: #('Moose-Camel-AST') ]