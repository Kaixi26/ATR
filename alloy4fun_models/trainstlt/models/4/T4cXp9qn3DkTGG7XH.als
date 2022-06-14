open main
pred idT4cXp9qn3DkTGG7XH_prop5 {
	
	all t:Train{
  		always( t.pos in Exit implies eventually no t.pos)
  		always( t.pos in Entry implies eventually t.pos in t.pos.prox)
  	}
}
pred __repair { idT4cXp9qn3DkTGG7XH_prop5 }
check __repair { idT4cXp9qn3DkTGG7XH_prop5 <=> prop5o }