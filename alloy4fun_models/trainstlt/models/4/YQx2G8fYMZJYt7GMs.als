open main
pred idYQx2G8fYMZJYt7GMs_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit  => no t.pos'))
 always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )

  
  
 
}
pred __repair { idYQx2G8fYMZJYt7GMs_prop5 }
check __repair { idYQx2G8fYMZJYt7GMs_prop5 <=> prop5o }