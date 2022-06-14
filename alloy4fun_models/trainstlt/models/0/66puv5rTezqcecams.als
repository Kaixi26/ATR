open main
pred id66puv5rTezqcecams_prop1 {
	
	all t:Track | Green not in t.signal until Green in t.signal
}
pred __repair { id66puv5rTezqcecams_prop1 }
check __repair { id66puv5rTezqcecams_prop1 <=> prop1o }