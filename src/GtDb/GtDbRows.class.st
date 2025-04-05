Class {
	#name : #GtDbRows,
	#superclass : #GtDbGroup,
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbRows >> items [
	^ rawData collect: [ :each | GtDbRow new rawData: each ] 
]
