open main
pred id3ipKf68NzCAzfYQwq_prop5 {
	
	all t:Train {
  		t.pos in Exit => t.pos' = t.pos - t.pos
      	t.pos in (Track - Exit) => {
      		one tk:((t.pos).prox) | t.pos' = tk
      	}
  	} 
}
pred __repair { id3ipKf68NzCAzfYQwq_prop5 }
check __repair { id3ipKf68NzCAzfYQwq_prop5 <=> prop5o }