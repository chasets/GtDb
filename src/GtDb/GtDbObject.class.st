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

{ #category : #accessing }
GtDbObject >> rawData [
	^ rawData
]

{ #category : #accessing }
GtDbObject >> rawData: anObject [
	rawData := anObject
]
