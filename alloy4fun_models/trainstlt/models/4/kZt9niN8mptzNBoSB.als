open main
pred idkZt9niN8mptzNBoSB_prop5 {
	
	
	all t : Train | t.pos' != t.pos and no (t.pos & Exit) implies (t.pos' in t.pos.prox)
}
pred __repair { idkZt9niN8mptzNBoSB_prop5 }
check __repair { idkZt9niN8mptzNBoSB_prop5 <=> prop5o }