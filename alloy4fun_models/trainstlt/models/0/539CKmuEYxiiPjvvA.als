open main
pred id539CKmuEYxiiPjvvA_prop1 {
	
	always (all t:Track | Green not in t.signal until (Green in t.signal))
}
pred __repair { id539CKmuEYxiiPjvvA_prop1 }
check __repair { id539CKmuEYxiiPjvvA_prop1 <=> prop1o }