testing
testSearchForFirst
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (self table searchForFirst: 1 inColumn: 1) equals: 1