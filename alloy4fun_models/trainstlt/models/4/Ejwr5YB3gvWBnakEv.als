open main
pred idEjwr5YB3gvWBnakEv_prop5 {
	
	all t:Train {
  		t.pos in Exit => no t.pos'
      	t.pos not in Exit => some tk : ((t.pos).prox) | t.pos' = tk
  	} 
}
pred __repair { idEjwr5YB3gvWBnakEv_prop5 }
check __repair { idEjwr5YB3gvWBnakEv_prop5 <=> prop5o }