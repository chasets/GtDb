Class {
	#name : #GtDbEntity,
	#superclass : #GtDbObject,
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbEntity >> <= other [
	^ self name <= other name
]

{ #category : #'as yet unclassified' }
GtDbEntity >> gtDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		priority: 10;
		items: [self rawData associations];
		column: 'Key' text: #key;
		column: 'Value' text: #value.
]

{ #category : #'as yet unclassified' }
GtDbEntity >> gtRawDataFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Raw data';
		priority: 60;
		items: [ self rawData isDictionary 
			ifTrue: [ self rawData associations sorted: [:a :b | a key < b key ] ]
			ifFalse: [ self rawData ] ];
		column: 'Property' text: #key; 
		column: 'Value' text: #value
]

{ #category : #'as yet unclassified' }
GtDbEntity >> name [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GtDbEntity >> printOn: aStream [
	aStream nextPutAll: self name.
]
