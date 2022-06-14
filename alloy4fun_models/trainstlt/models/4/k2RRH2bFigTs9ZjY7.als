open main
pred idk2RRH2bFigTs9ZjY7_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) or pos'=pos )
  
  
 
}
pred __repair { idk2RRH2bFigTs9ZjY7_prop5 }
check __repair { idk2RRH2bFigTs9ZjY7_prop5 <=> prop5o }