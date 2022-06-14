open main
pred idi7fJCAS7x2bLTKSqE_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  
		or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) 
		or  no t.pos.prox  => (no t.pos' or t.pos=t.pos')   )
  
  
 
}
pred __repair { idi7fJCAS7x2bLTKSqE_prop5 }
check __repair { idi7fJCAS7x2bLTKSqE_prop5 <=> prop5o }