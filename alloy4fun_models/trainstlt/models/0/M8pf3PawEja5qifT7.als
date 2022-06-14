open main
pred idM8pf3PawEja5qifT7_prop1 {
	
	always (all t:Track, g:Green | g not in t.signal until (g in t.signal))
}
pred __repair { idM8pf3PawEja5qifT7_prop1 }
check __repair { idM8pf3PawEja5qifT7_prop1 <=> prop1o }