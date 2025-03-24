Extension { #name : #GtHome }

{ #category : #'*GtDb' }
GtHome >> getStartedSection [
	<gtHomeSection>
	<gtExample>
	<noTest>
	^ GtHomeMultiCardGetStartedSection new

]

{ #category : #'*GtDb' }
GtHome >> gtDbSection [
	<gtHomeSection>
	<gtExample>
	<noTest>
	^ GtDbHomeSection new

]
