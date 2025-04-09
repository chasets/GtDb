Class {
	#name : #ChinookDbAccess,
	#superclass : #GtDbRows,
	#category : #'GtDb-Access'
}

{ #category : #'as yet unclassified' }
ChinookDbAccess class >> groupClassname [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ChinookDbAccess >> retrieve [
	| results |
	results := self query: self sql.
	rawData := results
]

{ #category : #'as yet unclassified' }
ChinookDbAccess >> sql [
	self subclassResponsibility
]
