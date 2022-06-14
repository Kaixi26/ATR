open main
pred idbsQ52CjBrF7teoFy4_prop5 {
	
	always(
		all t:Train {
        	some (t.pos & Exit) => no t.pos'
          	some (t.pos & (Track-Exit)) => some tk2: (t.pos).prox | t.pos' = tk2
  		} 
   	)
}
pred __repair { idbsQ52CjBrF7teoFy4_prop5 }
check __repair { idbsQ52CjBrF7teoFy4_prop5 <=> prop5o }