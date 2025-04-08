Class {
	#name : #InformationSchemaAnsiSql,
	#superclass : #InformationSchemaSql,
	#category : #'GtDb-InformationSchema'
}

{ #category : #accessing }
InformationSchemaAnsiSql >> columnSqlForTable: table forSchema: schema forCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select
	table_catalog as catalog_name, table_schema as schema_name,
	table_name, column_name, ordinal_position, is_nullable, data_type
from information_schema.columns
where table_catalog = ''{1}''
	and table_schema = ''{2}''
	and table_name = ''{3}''
order by ordinal_position
'.
	^ sqlTemplate format: {catalog . schema . table}
]

{ #category : #'as yet unclassified' }
InformationSchemaAnsiSql >> informationSchemaType [
	^ 'ansi'
]
