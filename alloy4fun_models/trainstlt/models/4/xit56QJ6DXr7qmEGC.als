open main
pred idxit56QJ6DXr7qmEGC_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos)  or (one t.pos  => t.pos' in t.pos.prox  ) )
  
  
 
}
pred __repair { idxit56QJ6DXr7qmEGC_prop5 }
check __repair { idxit56QJ6DXr7qmEGC_prop5 <=> prop5o }