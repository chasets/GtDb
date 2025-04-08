Class {
	#name : #GtDbInformationSchemaRows,
	#superclass : #GtDbRows,
	#instVars : [
		'catalogName',
		'tableName',
		'schemaName'
	],
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
GtDbInformationSchemaRows >> catalogName [
	^ catalogName
]

{ #category : #accessing }
GtDbInformationSchemaRows >> catalogName: anObject [
	catalogName := anObject
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaRows >> defaultinformationSchemaSqlProviderClassname [
	^ 'InformationSchemaAnsiSql'
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaRows >> informationSchemaSqlProvider [
	| sqlProviderClassname |
	(self databaseObject respondsTo: #informationSchemaSqlClassname)
		ifTrue: [ sqlProviderClassname := databaseObject informationSchemaSqlClassname ]
		ifFalse: [ sqlProviderClassname := self defaultinformationSchemaSqlProviderClassname ].
	^ sqlProviderClassname asClass new
]

{ #category : #accessing }
GtDbInformationSchemaRows >> schemaName [
	^ schemaName
]

{ #category : #accessing }
GtDbInformationSchemaRows >> schemaName: anObject [
	schemaName := anObject
]

{ #category : #accessing }
GtDbInformationSchemaRows >> tableName [
	^ tableName
]

{ #category : #accessing }
GtDbInformationSchemaRows >> tableName: anObject [
	tableName := anObject
]
