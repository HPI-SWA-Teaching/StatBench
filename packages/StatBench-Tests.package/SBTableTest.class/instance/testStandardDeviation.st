testing
testStandardDeviation
	self table: SBTable new.
	self table
		addRows: 2 size: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self
		assert: (self table varianceForColumn: 1) equals: 1;
		assert: (self table varianceForColumn: 2) equals: 1