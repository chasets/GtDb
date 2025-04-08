Class {
	#name : #GtDbInformationSchemaCatalogs,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaCatalogs >> items [
	^ rawData collect: [ :each | GtDbInformationSchemaCatalog new databaseObject: self databaseObject; rawData: each]
]

{ #category : #accessing }
GtDbInformationSchemaCatalogs >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider catalogSql.
	results := self query: sql.
	self rawData: results 
]
