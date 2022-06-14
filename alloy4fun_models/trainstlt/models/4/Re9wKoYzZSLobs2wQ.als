open main
pred idRe9wKoYzZSLobs2wQ_prop5 {
	
  	always all t : Train {
  		(t.pos = Exit) implies no t.pos'
      	or
      	(one t.pos) implies (t.pos' in t.pos.prox)
  	}
}
pred __repair { idRe9wKoYzZSLobs2wQ_prop5 }
check __repair { idRe9wKoYzZSLobs2wQ_prop5 <=> prop5o }