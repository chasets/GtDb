Class {
	#name : #GtDbSqliteConfig,
	#superclass : #GtDbConfig,
	#category : #'GtDb-Config'
}

{ #category : #accessing }
GtDbSqliteConfig >> databaseDriverClassname [
	^ 'ChinookSqliteAccessObject'
]

{ #category : #'as yet unclassified' }
GtDbSqliteConfig >> informationSchemaSqlClassname [
	^ 'InformationSchemaSqliteSql'
]

{ #category : #accessing }
GtDbSqliteConfig >> sqlitePath [
	^ ChinookDataRepo new sqliteFile
]
