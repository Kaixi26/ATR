open main
pred idhEhaeHs2CkvFnZAwP_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    
  }
}
pred __repair { idhEhaeHs2CkvFnZAwP_prop5 }
check __repair { idhEhaeHs2CkvFnZAwP_prop5 <=> prop5o }