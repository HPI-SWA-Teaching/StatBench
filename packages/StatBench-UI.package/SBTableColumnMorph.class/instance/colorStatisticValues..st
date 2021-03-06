display
colorStatisticValues: aDictionary
	| textMorph statValue |
	self colorsForStatisicValues keysAndValuesDo: [ :key :value |
		statValue := (aDictionary at: key) at: self column.
		statValue = #NaN
			ifFalse: [
				textMorph := self submorphs detect: [ :currentTextMorph |
					currentTextMorph contents = statValue asString ].
				textMorph backgroundColor: value ]]