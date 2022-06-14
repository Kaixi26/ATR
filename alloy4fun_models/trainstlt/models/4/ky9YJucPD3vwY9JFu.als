open main
pred idky9YJucPD3vwY9JFu_prop5 {
	
	all t:Train {
      some t.pos =>{
  		t.pos in Exit => t.pos' = t.pos - t.pos
      	t.pos in (Track - Exit) => {
      		one tk:((t.pos).prox) | t.pos' = tk
      	}
      }
  	} 
}
pred __repair { idky9YJucPD3vwY9JFu_prop5 }
check __repair { idky9YJucPD3vwY9JFu_prop5 <=> prop5o }