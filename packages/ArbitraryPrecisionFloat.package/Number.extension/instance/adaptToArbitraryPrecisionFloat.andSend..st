*ArbitraryPrecisionFloat
adaptToArbitraryPrecisionFloat: rcvr andSend: selector 
	"If I am involved in arithmetic with a Float, convert me to a Float."
	
	^ rcvr perform: selector with: (self asArbitraryPrecisionFloatNumBits: rcvr numBits)