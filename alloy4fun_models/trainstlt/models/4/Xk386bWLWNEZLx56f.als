open main
pred idXk386bWLWNEZLx56f_prop5 {
	
  always(
	all t:Train {
      	some tk:t.pos {
        	(tk in Exit) => t.pos' = t.pos - tk
          	(tk not in Exit) => some tk2: tk.prox | t.pos' = tk2
        }
  	} 
   )
}
pred __repair { idXk386bWLWNEZLx56f_prop5 }
check __repair { idXk386bWLWNEZLx56f_prop5 <=> prop5o }