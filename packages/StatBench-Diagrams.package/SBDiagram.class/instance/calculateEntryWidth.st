diagram properties
calculateEntryWidth
	|  maxWidth collection |
	maxWidth := 0.
	collection := self hasNumericalDomain
		ifTrue: [
			self domain collect: [ :element |
				self scientificNotationFor: element ]]
		ifFalse: [ self domain ].
	collection do: [ :element |
		maxWidth := maxWidth max: (self defaultFont widthOfString: element asString) ].
	maxWidth := maxWidth + self defaultAnnotationPadding.
	self chooseNumericalLimits
		ifFalse: [ maxWidth := maxWidth min: self maxStringEntryWidth ].
	self entryWidth: maxWidth