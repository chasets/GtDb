Class {
	#name : #GtDbSqliteConfig,
	#superclass : #GtDbConfig,
	#category : #'GtDb-Config'
}

{ #category : #accessing }
GtDbSqliteConfig >> databaseDriverClassname [
	^ 'ChinookSqliteAccessObject'
]

{ #category : #accessing }
GtDbSqliteConfig >> sqlitePath [
	^ ChinookDataRepo new sqliteFile
]
