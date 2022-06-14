open main
pred idmeA3DhzNnrW7iMGtn_prop5 {
	
	all t:Train {
  		t.pos in Exit => no t.pos'
      	t.pos not in Exit => {
      		one tk:((t.pos).prox) | t.pos' = tk
      	}
  	} 
}
pred __repair { idmeA3DhzNnrW7iMGtn_prop5 }
check __repair { idmeA3DhzNnrW7iMGtn_prop5 <=> prop5o }