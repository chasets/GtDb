Class {
	#name : #ChinookDbAccessAlbums,
	#superclass : #ChinookDbAccess,
	#category : #'GtDb-Access'
}

{ #category : #'as yet unclassified' }
ChinookDbAccessAlbums class >> groupClassname [
	^ 'ChinookAlbums'
]

{ #category : #'as yet unclassified' }
ChinookDbAccessAlbums >> retrieve [
	^ self query: 'select * from album'
]
