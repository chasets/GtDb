Class {
	#name : #GtDbObject,
	#superclass : #Object,
	#instVars : [
		'rawData',
		'databaseConfig'
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

{ #category : #'as yet unclassified' }
GtDbObject >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		priority: 30;
		aptitude: [ BrGlamorousCodeEditorAptitude new ];
		styler: [ MysqlParser gtStyler ];
		text: [ '' asRopedText ];
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
	db := (self databaseConfig databaseDriverClassname asClass) new.
	db databaseConfig: self databaseConfig.  		
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
