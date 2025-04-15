Class {
	#name : #InformationSchemaAnsiSql,
	#superclass : #InformationSchemaSql,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
InformationSchemaAnsiSql >> catalogSql [
	^ 'select distinct catalog_name from information_schema.schemata order by catalog_name'
]

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

{ #category : #'as yet unclassified' }
InformationSchemaAnsiSql >> schemataSqlForCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select
	catalog_name, schema_name
from information_schema.schemata
where catalog_name = ''{1}''
order by catalog_name, schema_name
'.
	^ sqlTemplate format: {catalog}
]

{ #category : #'as yet unclassified' }
InformationSchemaAnsiSql >> tableSqlForSchema: schema forCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select 
	table_catalog as catalog_name, table_schema as schema_name,
	table_name, 
	table_type, '''' as table_source
from information_schema.tables
where table_catalog = ''{1}'' and table_schema = ''{2}''
order by table_name
'.
	^ sqlTemplate format: {catalog . schema}
]
