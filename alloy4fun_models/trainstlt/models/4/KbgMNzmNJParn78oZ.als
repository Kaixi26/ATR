open main
pred idKbgMNzmNJParn78oZ_prop5 {
	
	always all t : Train {
    	((t.pos = Exit) implies (no t.pos'))
  		 or
        (t.pos' in t.pos.prox)
  	}
}
pred __repair { idKbgMNzmNJParn78oZ_prop5 }
check __repair { idKbgMNzmNJParn78oZ_prop5 <=> prop5o }