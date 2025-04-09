Class {
	#name : #GtDbInformationSchemaTables,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTables >> items [
	^ rawData collect: [ :each | GtDbInformationSchemaTable new databaseConfig: self databaseConfig; catalogName: self catalogName; schemaName: self schemaName; tableName: self tableName; rawData: each]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaTables >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider tableSqlForSchema: self schemaName forCatalog: self catalogName.
	results := self query: sql.
	self rawData: results
]
