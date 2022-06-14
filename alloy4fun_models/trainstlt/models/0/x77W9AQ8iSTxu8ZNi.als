open main
pred idx77W9AQ8iSTxu8ZNi_prop1 {
	
	always (all t:Track&Entry | always Green not in t.signal)
}
pred __repair { idx77W9AQ8iSTxu8ZNi_prop1 }
check __repair { idx77W9AQ8iSTxu8ZNi_prop1 <=> prop1o }