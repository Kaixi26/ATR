open main
pred idWTJkpfWPBsZzwmARH_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies eventually no t.pos')
    always (t.pos in Track  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idWTJkpfWPBsZzwmARH_prop5 }
check __repair { idWTJkpfWPBsZzwmARH_prop5 <=> prop5o }