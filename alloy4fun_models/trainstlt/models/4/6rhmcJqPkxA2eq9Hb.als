open main
pred id6rhmcJqPkxA2eq9Hb_prop5 {
	
	always(
		all t:Train {
        	t.pos in Exit => no t.pos'
          	t.pos in Entry => some tk2: (t.pos).prox | t.pos' = tk2
  		} 
   	)
}
pred __repair { id6rhmcJqPkxA2eq9Hb_prop5 }
check __repair { id6rhmcJqPkxA2eq9Hb_prop5 <=> prop5o }