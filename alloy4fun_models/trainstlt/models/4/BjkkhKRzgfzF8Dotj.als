open main
pred idBjkkhKRzgfzF8Dotj_prop5 {
	
	always(
		all t:Train {
        	some (t.pos & Exit) => no t.pos'
          	some (t.pos & (Track-Exit)) => some tk2: (t.pos).prox { t.pos' = tk2 }
  		} 
   	)
}
pred __repair { idBjkkhKRzgfzF8Dotj_prop5 }
check __repair { idBjkkhKRzgfzF8Dotj_prop5 <=> prop5o }