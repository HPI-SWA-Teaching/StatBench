testing
testWriteCSVFile
	| fileName delimter readTable |
	delimter := SBFileParser csvSeparator.
	fileName := 'csvwritetest'.
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		addColumnName: 'a';
		addColumnName: 'b';
		row: 1 column: 1 value: (SBNumber newFromInt: 1);
		row: 1 column: 2 value: (SBNumber newFromInt: 2);
		row: 2 column: 1 value: (SBNumber newFromInt: 3);
		row: 2 column: 2 value: (SBNumber newFromInt: 4).
	SBFileParser writeTable: self table toCSVFile: fileName withHeader: true.
	
	readTable := SBFileParser readCSVFile: fileName, '.csv' withHeader: true.
	self assert: (self table row: 1 column: 1) equals: (readTable row: 1 column: 1).
	self assert: (self table row: 1 column: 2) equals: (readTable row: 1 column: 2).
	self assert: (self table row: 2 column: 1) equals: (readTable row: 2 column: 1).
	self assert: (self table row: 2 column: 2) equals: (readTable row: 2 column: 2).
	self assert: self table columnNames equals: readTable columnNames