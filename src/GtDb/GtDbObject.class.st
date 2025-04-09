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

{ #category : #'as yet unclassified' }
GtDbObject >> gtDatabaseObjectFor: aView [
	<gtView>
	^ aView list 
		title: 'Database Object';
		priority: 35;
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
				| sql result |
				sql := aButton phlow textViewContent asString.
				result := GtDbRows new databaseConfig: self databaseConfig; query: sql; yourself.
				aButton phlow spawnObject: result ]
]

{ #category : #'as yet unclassified' }
GtDbObject >> query: aSqlString [
	| db results |
	lastSql := aSqlString.
	db := self databaseObject.
	results := db query: aSqlString.
	rawData := results.
	^ rawData
]

{ #category : #accessing }
GtDbObject >> rawData [
	^ rawData
]

{ #category : #accessing }
GtDbObject >> rawData: anObject [
	rawData := anObject
]
