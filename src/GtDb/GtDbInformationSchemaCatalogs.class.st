Class {
	#name : #GtDbInformationSchemaCatalogs,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
GtDbInformationSchemaCatalogs >> retrieveForCatalog: catalog [
	| sql results |
	sql := self informationSchemaSqlProvider schemataSqlFor: catalog.
	results := self query: sql.
	self rawData: results 
]
