Class {
	#name : #InformationSchemaSqliteSql,
	#superclass : #InformationSchemaSql,
	#category : #'GtDb-InformationSchema'
}

{ #category : #'as yet unclassified' }
InformationSchemaSqliteSql >> columnSqlForTable: table forSchema: schema forCatalog: catalog [
	| sqlTemplate |
	sqlTemplate := '
select 
	''{1}'' as catalog_name, ''{2}'' as schema_name,
	''{3}'' as table_name, name as column_name, cid as orginal_position,
	dflt_value as column_default, 
	case when "notnull" = 1 then ''NO'' else ''YES'' end as is_nullable, 
	type as data_type
from {1}.pragma_table_info(''{3}'')
order by cid
'.
	^ sqlTemplate format: {catalog . schema . table}
]
