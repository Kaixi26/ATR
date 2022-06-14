open main
pred id6ivssMKDeYsNfASur_prop15 {
	
	always eventually (some t:Train | (t.pos)' != t.pos)
}
pred __repair { id6ivssMKDeYsNfASur_prop15 }
check __repair { id6ivssMKDeYsNfASur_prop15 <=> prop15o }