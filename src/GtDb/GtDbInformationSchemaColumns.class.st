Class {
	#name : #GtDbInformationSchemaColumns,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaColumns >> items [
	^ rawData collect: [ :each | GtDbInformationSchemaColumn new databaseConfig: self databaseConfig; catalogName: self catalogName; schemaName: self schemaName; tableName: self tableName; rawData: each]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaColumns >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider columnSqlForTable: self tableName forSchema: self schemaName forCatalog: self catalogName.
	results := self query: sql.
	self rawData: results
]
