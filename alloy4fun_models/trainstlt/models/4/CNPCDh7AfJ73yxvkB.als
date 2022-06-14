open main
pred idCNPCDh7AfJ73yxvkB_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Entry  implies eventually t.pos' in t.pos.prox)
  }
}
pred __repair { idCNPCDh7AfJ73yxvkB_prop5 }
check __repair { idCNPCDh7AfJ73yxvkB_prop5 <=> prop5o }