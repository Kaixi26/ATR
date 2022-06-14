open main
pred idhRaqe8E7aLgGJzeXC_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) )
  
  
 
}
pred __repair { idhRaqe8E7aLgGJzeXC_prop5 }
check __repair { idhRaqe8E7aLgGJzeXC_prop5 <=> prop5o }