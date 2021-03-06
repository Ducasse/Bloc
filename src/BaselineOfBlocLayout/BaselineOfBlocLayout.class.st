Class {
	#name : #BaselineOfBlocLayout,
	#superclass : #BaselineOf,
	#category : #BaselineOfBlocLayout
}

{ #category : #baseline }
BaselineOfBlocLayout >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'BlocCore' with: [
				spec repository: 'github://pharo-graphics/Bloc/src' ];
			baseline: 'GToolkitExamplesEngine' with: [
				spec repository: 'github://feenkcom/gtoolkit-examples/src' ].
		spec 
			package: #'Bloc-Layout' with: [
				spec requires: #(#BlocCore ). ];
			package: #'Bloc-Layout-Tests' with: [
				spec requires: #('Bloc-Layout' #GToolkitExamplesEngine ). ]. ].

]
