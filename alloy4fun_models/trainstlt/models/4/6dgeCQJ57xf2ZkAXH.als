open main
pred id6dgeCQJ57xf2ZkAXH_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
 always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )

  
  
 
}
pred __repair { id6dgeCQJ57xf2ZkAXH_prop5 }
check __repair { id6dgeCQJ57xf2ZkAXH_prop5 <=> prop5o }