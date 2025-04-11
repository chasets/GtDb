Class {
	#name : #InformationSchemaSqliteSql,
	#superclass : #InformationSchemaSql,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> catalogSql [
	^ 'select name as catalog_name from pragma_database_list order by seq'
]

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> columnSqlForTable: table forSchema: schema forCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select 
	"{1}" as catalog_name, "{2}" as schema_name,
	"{3}" as table_name, name as column_name, cid as orginal_position,
	dflt_value as column_default, 
	case when "notnull" = 1 then "NO" else "YES" end as is_nullable, 
	type as data_type
from {1}.pragma_table_info("{3}")
order by cid
'.
	^ sqlTemplate format: {catalog . schema . table}
]

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> informationSchemaType [
	^ 'sqlite'
]

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> schemataSqlForCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select
	name as catalog_name, 
	name as schema_name
from pragma_database_list
where name = "{1}"
'.
	^ sqlTemplate format: {catalog}
]

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> tableSqlForSchema: schema forCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select 
	"{1}" as catalog_name, "{2}" as schema_name,
	name as table_name, 
	case when type = "table" then "BASE TABLE"
		 when type = "view"  then "VIEW"
		 else type 
	end as table_type, sql as table_source
from {1}.sqlite_master
where lower(type) <> "index"
order by table_name
'.
	^ sqlTemplate format: {catalog . schema}
	

]
