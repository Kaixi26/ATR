open main
pred id92hpzyEgnN6zq2Jfb_prop5 {
	
	all t : Train {
    	((t.pos = Exit) implies (no t.pos'))
  		 or
        (t.pos' in t.pos.prox)
  	}
}
pred __repair { id92hpzyEgnN6zq2Jfb_prop5 }
check __repair { id92hpzyEgnN6zq2Jfb_prop5 <=> prop5o }