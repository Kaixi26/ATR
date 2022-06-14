open main
pred idCCtwQfbBSvDHgtTtM_prop5 {
	
	all t:Train {
  		t.pos in Exit => no t.pos'
      	t.pos in (Track - Exit) => {
      		one tk:((t.pos).prox) | t.pos' = tk
      	}
  	} 
}
pred __repair { idCCtwQfbBSvDHgtTtM_prop5 }
check __repair { idCCtwQfbBSvDHgtTtM_prop5 <=> prop5o }