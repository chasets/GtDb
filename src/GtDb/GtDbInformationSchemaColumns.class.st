Class {
	#name : #GtDbInformationSchemaColumns,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
GtDbInformationSchemaColumns >> retrieveFor: table [
	self retrieveForTable: table forSchema: 'main' forCatalog: 'main'
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaColumns >> retrieveForTable: table forSchema: schema forCatalog: catalog [
	| sql results |
	sql := self informationSchemaSqlProvider columnSqlForTable: table forSchema: schema forCatalog: catalog.
	results := self query: sql.
	self rawData: results
]
