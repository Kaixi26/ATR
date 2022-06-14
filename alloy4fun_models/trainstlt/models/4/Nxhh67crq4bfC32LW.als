open main
pred idNxhh67crq4bfC32LW_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos'))
 always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )
 always (all t:Train| (no t.pos.prox and one t.pos:> Track-Exit) => (no t.pos' or t.pos'=t.pos) )
  
  
 
}
pred __repair { idNxhh67crq4bfC32LW_prop5 }
check __repair { idNxhh67crq4bfC32LW_prop5 <=> prop5o }