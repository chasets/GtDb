Class {
	#name : #BaselineOfGtDb,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtDb
}

{ #category : #loading }
BaselineOfGtDb class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'GtDb' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGtDb >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtDb'
		]
]
