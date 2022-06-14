open main
pred idANb4ZD43cDiybhs7G_prop5 {
	
	all t:Train {
  		t.pos in Exit => Train' = Train - t 
      	t.pos in (Track - Exit) => {
      		one tk:((t.pos).prox) | t.pos' = tk
      	}
  	} 
}
pred __repair { idANb4ZD43cDiybhs7G_prop5 }
check __repair { idANb4ZD43cDiybhs7G_prop5 <=> prop5o }