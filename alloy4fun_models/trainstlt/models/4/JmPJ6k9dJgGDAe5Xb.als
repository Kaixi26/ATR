open main
pred idJmPJ6k9dJgGDAe5Xb_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Entry  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idJmPJ6k9dJgGDAe5Xb_prop5 }
check __repair { idJmPJ6k9dJgGDAe5Xb_prop5 <=> prop5o }