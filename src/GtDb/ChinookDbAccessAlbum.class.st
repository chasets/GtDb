Class {
	#name : #ChinookDbAccessAlbum,
	#superclass : #ChinookDbAccess,
	#category : #'GtDb-Access'
}

{ #category : #'as yet unclassified' }
ChinookDbAccessAlbum class >> groupClassname [
	^ 'ChinookAlbum'
]

{ #category : #'as yet unclassified' }
ChinookDbAccessAlbum >> sql [ 
	^ 'select * from album'
]
