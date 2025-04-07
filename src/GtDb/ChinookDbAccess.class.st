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
	self subclassResponsibility
]
