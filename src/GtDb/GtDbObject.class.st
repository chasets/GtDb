Class {
	#name : #GtDbObject,
	#superclass : #Object,
	#instVars : [
		'rawData',
		'databaseConfig',
		'databaseObject',
		'lastSql'
	],
	#category : #'GtDb-Core'
}

{ #category : #accessing }
GtDbObject >> databaseConfig [
	^ databaseConfig
]

{ #category : #accessing }
GtDbObject >> databaseConfig: anObject [
	databaseConfig := anObject
]

{ #category : #accessing }
GtDbObject >> databaseObject [
	databaseObject
		ifNil: [ databaseObject := (self databaseConfig databaseDriverClassname asClass new) databaseConfig: self databaseConfig ].
	^ databaseObject
]

{ #category : #accessing }
GtDbObject >> databaseObject: anObject [
	databaseObject := anObject
]

{ #category : #'as yet unclassified' }
GtDbObject >> gtDatabaseObjectFor: aView [
	<gtView>
	^ aView list 
		title: 'Database Object';
		priority: 22;
		items: [{self databaseObject}]
]

{ #category : #'as yet unclassified' }
GtDbObject >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		priority: 30;
		aptitude: [ BrGlamorousCodeEditorAptitude new ];
		styler: [ MysqlParser gtStyler ];
		text: [ lastSql asRopedText ];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton |
				| query result |
				query := aButton phlow textViewContent asString.
				result := self query: query.
				aButton phlow spawnObject: result ]
]

{ #category : #'as yet unclassified' }
GtDbObject >> query: aSqlString [
	| db |
	lastSql := aSqlString.
	db := self databaseObject.
	^ db query: aSqlString
]

{ #category : #accessing }
GtDbObject >> rawData [
	^ rawData
]

{ #category : #accessing }
GtDbObject >> rawData: anObject [
	rawData := anObject
]
