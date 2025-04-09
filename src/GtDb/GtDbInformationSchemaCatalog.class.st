Class {
	#name : #GtDbInformationSchemaCatalog,
	#superclass : #GtDbInformationSchemaRow,
	#instVars : [
		'schemata'
	],
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> catalogName [
	catalogName := self name.
	^ catalogName
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> gtSchemataFor: aView [
	<gtView>
	^ aView list 
		title: 'Schemata';
		priority: 9;
		items: [self schemata ]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> name [
	^ rawData at: #catalog_name
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> schemata [
	schemata ifNil: [schemata := GtDbInformationSchemaSchemata new databaseConfig: self databaseConfig; catalogName: self catalogName; retrieve].
	^ schemata sorted
]
