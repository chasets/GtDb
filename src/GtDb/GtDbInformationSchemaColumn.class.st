Class {
	#name : #GtDbInformationSchemaColumn,
	#superclass : #GtDbInformationSchemaRow,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaColumn >> name [
	^ self rawData at: #column_name
]
