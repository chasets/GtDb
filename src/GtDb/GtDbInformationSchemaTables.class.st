Class {
	#name : #GtDbInformationSchemaTables,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTables >> retrieveForSchema: schema [
	| sql results |
	sql := self informationSchemaSqlProvider tableSqlForSchema: schema forCatalog: 'main'.
	results := self query: sql.
	self rawData: results
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTables >> retrieveForSchema: schema forCatalog: catalog [
	| sql results |
	sql := self informationSchemaSqlProvider tableSqlForSchema: schema forCatalog: catalog.
	results := self query: sql.
	self rawData: results
]
