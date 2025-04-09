Class {
	#name : #GtDbInformationSchemaSchemata,
	#superclass : #GtDbInformationSchemaRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchemata >> gtSchemataFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Details';
		priority: 1;
		items: [self items sorted];
		column: 'Catalog' text: #catalog;
		column: 'Schema' text: #name
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchemata >> items [
	^ rawData collect: [ :each | GtDbInformationSchemaSchema new databaseConfig: self databaseConfig; catalogName: self catalogName; rawData: each]
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaSchemata >> retrieve [
	| sql results |
	sql := self informationSchemaSqlProvider schemataSqlForCatalog: self catalogName.
	results := self query: sql.
	self rawData: results 
]
