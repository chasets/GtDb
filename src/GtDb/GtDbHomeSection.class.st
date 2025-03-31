Class {
	#name : #GtDbHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'GtDb-Card'
}

{ #category : #'as yet unclassified' }
GtDbHomeSection >> defaultPriority [
	^ 30
]

{ #category : #'as yet unclassified' }
GtDbHomeSection >> gtUsedKnowledgeBaseCard [
	<gtSectionCard>
	<gtExample>
	<noTest>
	| dbName |
	dbName := (LeDatabasesRegistry downloadedData defaultLogicalDatabase databases detect: [:i | i databaseName includesSubstring: 'GtDb']) databaseName.

	^ GtHomeCard lepiterBaseWithTableOfContents
		title: 'GtDb Home Card';
		description: 'Explore GtDb knowledge base';
		priority: 1;
		databaseName: dbName;
		recentlyEditedPage;
		editableToolbar;
		details: [ :db | 
			| snippets somePages |
			somePages := db pages select: #shouldAppearInIndexOrDailyNotes.
			snippets := somePages flatCollect: #allChildrenDepthFirst.
			'Your local knowledge base includes ' , somePages size asString
				, ' pages containing ' , snippets size asString , ' snippets of '
				, (snippets groupedBy: #class) size asString , ' different kinds.' ]
				yourself
]

{ #category : #'as yet unclassified' }
GtDbHomeSection >> sectionTitle [
	^ 'GtDb'
]
