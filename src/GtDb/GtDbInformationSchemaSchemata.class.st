Class {
	#name : #GtDbInformationSchemaSchemata,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchemata >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider schemataSqlFor: 'main'.
	results := self query: sql.
	self rawData: results 
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchemata >> retrieveForCatalog: catalog [
	| sql results |
	sql := self informationSchemaSqlProvider schemataSqlFor: catalog.
	results := self query: sql.
	self rawData: results 
]
