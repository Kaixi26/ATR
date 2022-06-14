open main
pred idTiXaEvdZv4k9J5siP_prop1 {
	
	always (all t:Track&Entry | once Green not in t.signal)
}
pred __repair { idTiXaEvdZv4k9J5siP_prop1 }
check __repair { idTiXaEvdZv4k9J5siP_prop1 <=> prop1o }