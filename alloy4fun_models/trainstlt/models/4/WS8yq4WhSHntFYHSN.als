open main
pred idWS8yq4WhSHntFYHSN_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) )
  
  
 
}
pred __repair { idWS8yq4WhSHntFYHSN_prop5 }
check __repair { idWS8yq4WhSHntFYHSN_prop5 <=> prop5o }