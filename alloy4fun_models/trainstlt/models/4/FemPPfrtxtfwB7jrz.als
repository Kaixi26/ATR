open main
pred idFemPPfrtxtfwB7jrz_prop5 {
	
	all t : Train | no (t.pos & Exit) implies (t.pos' in t.pos.prox)
}
pred __repair { idFemPPfrtxtfwB7jrz_prop5 }
check __repair { idFemPPfrtxtfwB7jrz_prop5 <=> prop5o }