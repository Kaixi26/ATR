open main
pred id6CAboyGNzJ8ekxsiu_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
 always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )

  
  
 
}
pred __repair { id6CAboyGNzJ8ekxsiu_prop5 }
check __repair { id6CAboyGNzJ8ekxsiu_prop5 <=> prop5o }