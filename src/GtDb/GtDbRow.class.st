Class {
	#name : #GtDbRow,
	#superclass : #GtDbEntity,
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbRow >> colNames [
	^ self rawData keys
]

{ #category : #'as yet unclassified' }
GtDbRow >> name [
| maxSize |
	maxSize := self size min: 10.
	^ (self row first: maxSize) joinUsing: Character tab
]

{ #category : #'as yet unclassified' }
GtDbRow >> row [
	^ self rawData values
]

{ #category : #'as yet unclassified' }
GtDbRow >> size [
	^ rawData size
]
