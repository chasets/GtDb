Class {
	#name : #GtDbExampleChinookConfig,
	#superclass : #Object,
	#instVars : [
		'databaseConfig'
	],
	#category : #'GtDb-Config'
}

{ #category : #'as yet unclassified' }
GtDbExampleChinookConfig >> accessClassname [
	^ 'ChinookDbAccess'
]

{ #category : #accessing }
GtDbExampleChinookConfig >> databaseConfig [
	^ databaseConfig
]

{ #category : #accessing }
GtDbExampleChinookConfig >> databaseConfig: anObject [
	databaseConfig := anObject
]
