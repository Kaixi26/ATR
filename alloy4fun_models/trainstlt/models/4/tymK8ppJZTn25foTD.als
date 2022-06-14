open main
pred idtymK8ppJZTn25foTD_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos)  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) )
  
  
 
}
pred __repair { idtymK8ppJZTn25foTD_prop5 }
check __repair { idtymK8ppJZTn25foTD_prop5 <=> prop5o }