open main
pred idDhStsWnAmGW9oMKMA_prop5 {
	
	always all t : Train {
    	((t.pos = Exit) implies (no t.pos'))
  		 or
        (t.pos' in t.pos.prox)
  	}
}
pred __repair { idDhStsWnAmGW9oMKMA_prop5 }
check __repair { idDhStsWnAmGW9oMKMA_prop5 <=> prop5o }