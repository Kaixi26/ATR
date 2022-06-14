open main
pred idrNs4S6JLtxvXjGmDG_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos.prox')
    always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox'  )
  }
}
pred __repair { idrNs4S6JLtxvXjGmDG_prop5 }
check __repair { idrNs4S6JLtxvXjGmDG_prop5 <=> prop5o }