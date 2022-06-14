open main
pred idvW8LSXCJMEfx6zE6s_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Track  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idvW8LSXCJMEfx6zE6s_prop5 }
check __repair { idvW8LSXCJMEfx6zE6s_prop5 <=> prop5o }