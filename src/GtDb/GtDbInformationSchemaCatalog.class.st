Class {
	#name : #GtDbInformationSchemaCatalog,
	#superclass : #GtDbInformationSchemaRow,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> catalogName [
	catalogName := self name.
	^ catalogName
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalog >> name [
	^ rawData at: #catalog_name
]
