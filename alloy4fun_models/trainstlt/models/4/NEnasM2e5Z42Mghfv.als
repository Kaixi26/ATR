open main
pred idNEnasM2e5Z42Mghfv_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  
		or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) 
		or  no t.pos.prox  => (no t.pos' or t.pos=t.pos')   )
  
  
 
}
pred __repair { idNEnasM2e5Z42Mghfv_prop5 }
check __repair { idNEnasM2e5Z42Mghfv_prop5 <=> prop5o }