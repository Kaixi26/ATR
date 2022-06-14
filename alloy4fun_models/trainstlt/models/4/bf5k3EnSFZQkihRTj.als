open main
pred idbf5k3EnSFZQkihRTj_prop5 {
	
	
	all t : Train | t.pos' != t.pos and no (t.pos & Exit) implies (t.pos' in t.pos.prox)
  	all t : Train | t.pos' != t.pos implies Train' = Train - t
}
pred __repair { idbf5k3EnSFZQkihRTj_prop5 }
check __repair { idbf5k3EnSFZQkihRTj_prop5 <=> prop5o }