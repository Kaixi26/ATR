open main
pred idgYqpadfYdrfsWM2FG_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos'))
 always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )
 always (all t:Train| no t.pos.prox  => (no t.pos' or t.pos'=t.pos) )
  
  
 
}
pred __repair { idgYqpadfYdrfsWM2FG_prop5 }
check __repair { idgYqpadfYdrfsWM2FG_prop5 <=> prop5o }