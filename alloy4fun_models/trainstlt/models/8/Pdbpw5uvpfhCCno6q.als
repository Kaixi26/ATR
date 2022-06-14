open main
pred idPdbpw5uvpfhCCno6q_prop9 {
	
  always (all t:Train| eventually (no t.pos and one t.pos':>Entry))
	 
}
pred __repair { idPdbpw5uvpfhCCno6q_prop9 }
check __repair { idPdbpw5uvpfhCCno6q_prop9 <=> prop9o }