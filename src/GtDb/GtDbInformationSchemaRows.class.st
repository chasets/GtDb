Class {
	#name : #GtDbInformationSchemaRows,
	#superclass : #GtDbRows,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
GtDbInformationSchemaRows >> defaultinformationSchemaSqlProviderClassname [
	^ 'InformationSchemaAnsiSql'
]

{ #category : #'as yet unclassified' }
GtDbInformationSchemaRows >> informationSchemaSqlProvider [
	| sqlProviderClassname |
	(self databaseObject respondsTo: #informationSchemaSqlClassname)
		ifTrue: [ sqlProviderClassname := databaseObject informationSchemaSqlClassname ]
		ifFalse: [ sqlProviderClassname := self defaultinformationSchemaSqlProviderClassname ].
	^ sqlProviderClassname asClass new
]
