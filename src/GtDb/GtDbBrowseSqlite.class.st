Class {
	#name : #GtDbBrowseSqlite,
	#superclass : #GtDbInformationSchemaTables,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbBrowseSqlite class >> forFile: aSqliteFile [
	| config db |
	config := GtDbUsqlSqliteConfig new usqlConnection: aSqliteFile.
	db := self new databaseConfig: config.
	db catalogName: 'main'; schemaName: 'main'.
	^ db retrieve
]
