Class {
	#name : #GtDbInformationSchemaSchema,
	#superclass : #GtDbInformationSchemaRow,
	#instVars : [
		'tables'
	],
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchema >> gtTablesFor: aView [
	<gtView>
	^ aView list 
		title: 'Tables';
		priority: 9;
		items: [self tables ]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchema >> name [
	^ self rawData at: #schema_name
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchema >> schemaName [
	schemaName := self name.
	^ schemaName
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchema >> tables [
	tables ifNil: [tables := GtDbInformationSchemaTables new databaseConfig: self databaseConfig; catalogName: self catalogName; schemaName: self schemaName; retrieve].
	^ tables sorted
]
