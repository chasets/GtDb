Class {
	#name : #GtDbRows,
	#superclass : #GtDbGroup,
	#category : #'GtDb-Core'
}

{ #category : #'as yet unclassified' }
GtDbRows >> asRawData [
	^ self items asOrderedCollection collect: #rawData
]

{ #category : #'as yet unclassified' }
GtDbRows >> gtResultsFor: aView [
	<gtView>
	| view cols numColsToDisplay |
	cols := self rawData first keys.
	(self size isZero or: [ cols size isZero ]) ifTrue: [ ^ aView empty ].
	numColsToDisplay := 6 min: cols size.
	view := aView columnedList
			title: 'Results';
			priority: 9;
			items: [ self items ].
			
	(cols first: numColsToDisplay)
		do: [ :col | view column: col text: [ :item | item rawData at: col ] ].
	^ view
]

{ #category : #'as yet unclassified' }
GtDbRows >> items [
	^ rawData collect: [ :each | GtDbRow new databaseConfig: self databaseConfig; rawData: each ]
]
