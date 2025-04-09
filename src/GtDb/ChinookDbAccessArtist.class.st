Class {
	#name : #ChinookDbAccessArtist,
	#superclass : #ChinookDbAccess,
	#category : #'GtDb-Access'
}

{ #category : #'as yet unclassified' }
ChinookDbAccessArtist class >> groupClassname [
	^ 'ChinookArtist'
]

{ #category : #'as yet unclassified' }
ChinookDbAccessArtist >> sql [
	"could use a filter here for efficiency, but ChinookAlbum>>forArtist: subsets anyway"
	^ 'select * from artist'
]
