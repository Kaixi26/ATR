open main
pred idKuFFeCTkHT5R8BrrS_prop1 {
	
	all t : Track | t.signal not in Green
}
pred __repair { idKuFFeCTkHT5R8BrrS_prop1 }
check __repair { idKuFFeCTkHT5R8BrrS_prop1 <=> prop1o }