Class {
	#name : #GtDbInformationSchemaTable,
	#superclass : #GtDbInformationSchemaRow,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> columns [
	^ GtDbInformationSchemaColumns new databaseConfig: self databaseConfig; catalogName: self catalogName; schemaName: self schemaName; tableName: self tableName; retrieve
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> data [
	| queryLimit |
	queryLimit := 99999999.
	^ self dataWithLimit: queryLimit.
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> dataWithLimit: aLimitNumber [
	lastSql := '
select
	a.* 
from ', self schemaName, '.', self name, ' a 
limit ', aLimitNumber asString.
	^ GtDbRows new databaseConfig: self databaseConfig; query: lastSql; yourself
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> gtColumnsFor: aView [
	<gtView>
	^ aView list 
		title: 'Columns';
		priority: 8;
		items: [self columns asOrderedCollection sorted]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> gtDataFor: aView [
	<gtView>
	| view dbResults cols numColsToDisplay |
	dbResults := self dataWithLimit: 100.
	cols := self columns items collect: #name.
	(self size isZero or: [ cols size isZero ]) ifTrue: [ ^ aView empty ].
	numColsToDisplay := 6 min: cols size.
	view := aView columnedList 
		title: 'Data';
		priority: 9;
		items: [ dbResults ].
		(cols first: numColsToDisplay) do: [ :col |
			view column: col text: [ :item | item rawData at: col] ].
	^ view
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> name [
	^ self rawData at: #table_name
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTable >> tableName [
	tableName := self name.
	^ tableName
]
