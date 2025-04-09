Class {
	#name : #ChinookDbAccessArtists,
	#superclass : #ChinookDbAccess,
	#category : #'GtDb-Access'
}

{ #category : #'as yet unclassified' }
ChinookDbAccessArtists class >> groupClassname [
	^ 'ChinookArtists'
]

{ #category : #'as yet unclassified' }
ChinookDbAccessArtists >> sql [
	^ 'select * from artist'
]
