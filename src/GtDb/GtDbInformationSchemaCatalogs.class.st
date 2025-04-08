Class {
	#name : #GtDbInformationSchemaCatalogs,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
GtDbInformationSchemaCatalogs >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider catalogSql.
	results := self query: sql.
	self rawData: results 
]
