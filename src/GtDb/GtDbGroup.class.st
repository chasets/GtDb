Class {
	#name : #GtDbGroup,
	#superclass : #GtDbObject,
	#traits : 'TGtGroup',
	#classTraits : 'TGtGroup classTrait',
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbGroup >> gtItemsFor: aView [
	<gtView>
	^ aView list 
		title: 'Items';
		priority: 1;
		items: [self items]
]

{ #category : #'as yet unclassified' }
GtDbGroup >> gtRawDataFor: aView [
	<gtView>
	^ aView list
		title: 'Raw data';
		items: [ self rawData ]
]

{ #category : #testing }
GtDbGroup >> isEmptyOrNil [
	^ self isEmpty
]

{ #category : #printing }
GtDbGroup >> printOn: aStream [
	| itemCount |
	itemCount := self rawData isEmptyOrNil 
					ifTrue: [0] 
					ifFalse: [self items size] .
	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: itemCount asString.
	aStream nextPut: $)
]

{ #category : #'as yet unclassified' }
GtDbGroup >> sorted [
	^ self asOrderedCollection sorted
]
