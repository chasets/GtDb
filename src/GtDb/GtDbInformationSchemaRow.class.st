Class {
	#name : #GtDbInformationSchemaRow,
	#superclass : #GtDbRow,
	#instVars : [
		'catalogName',
		'schemaName',
		'tableName'
	],
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
GtDbInformationSchemaRow >> catalogName [
	^ catalogName
]

{ #category : #accessing }
GtDbInformationSchemaRow >> catalogName: anObject [
	catalogName := anObject
]

{ #category : #accessing }
GtDbInformationSchemaRow >> schemaName [
	^ schemaName
]

{ #category : #accessing }
GtDbInformationSchemaRow >> schemaName: anObject [
	schemaName := anObject
]

{ #category : #accessing }
GtDbInformationSchemaRow >> tableName [
	^ tableName
]

{ #category : #accessing }
GtDbInformationSchemaRow >> tableName: anObject [
	tableName := anObject
]
