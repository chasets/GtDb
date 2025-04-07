Class {
	#name : #GtDbRows,
	#superclass : #GtDbGroup,
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbRows >> items [
	^ rawData collect: [ :each | GtDbRow new databaseObject: self databaseObject; rawData: each ] 
]

{ #category : #'as yet unclassified' }
GtDbRows >> rawData [
	rawData ifNil: [rawData := self databaseObject structuredResults].
	^ rawData
]
