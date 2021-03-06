testing
testSearchForAll
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 4 size: 3;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 1 column: 3 value: 7;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4;
		row: 2 column: 3 value: 3.3;
		row: 3 column: 1 value: 5;
		row: 3 column: 2 value: 4;
		row: 3 column: 3 value: 9.123;
		row: 4 column: 1 value: 1;
		row: 4 column: 2 value: 8.5;
		row: 4 column: 3 value: 3.3.
	dict := self table searchForAll: 1 inColumn: 1. 
	self
		assert: (dict at: 1) equals: (self table rowAt: 1);
		assert: (dict at: 2) equals: (self table rowAt: 2).
	
	dict := self table searchForAll: 1 inColumn: 1. 
	self
		assert: (dict at: 1) equals: (self table rowAt: 1);
		assert: (dict at: 2) equals: (self table rowAt: 2).
	
	dict := self table searchForAll: 3.3 inColumn: 3. 
	self
		assert: (dict at: 2) equals: (self table rowAt: 2);
		assert: (dict at: 4) equals: (self table rowAt: 4).
	
	dict := self table searchForAll: 3.3 inColumn: 3. 
	self
		assert: (dict at: 2) equals: (self table rowAt: 2);
		assert: (dict at: 4) equals: (self table rowAt: 4)
	