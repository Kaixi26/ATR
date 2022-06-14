open main
pred id6RXWL5zEjiMrjsJjj_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit  => no t.pos')) or
 always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )

  
  
 
}
pred __repair { id6RXWL5zEjiMrjsJjj_prop5 }
check __repair { id6RXWL5zEjiMrjsJjj_prop5 <=> prop5o }