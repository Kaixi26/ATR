open main
pred idCzkFkrfKeiSYeFCvH_prop5 {
	
	always(
		all t:Train {
        	t.pos in Exit => no t.pos'
          	t.pos in Entry => some tk2: (t.pos).prox | t.pos' = tk2
          	no t.pos => t.pos' = t.pos
  		} 
   	)
}
pred __repair { idCzkFkrfKeiSYeFCvH_prop5 }
check __repair { idCzkFkrfKeiSYeFCvH_prop5 <=> prop5o }