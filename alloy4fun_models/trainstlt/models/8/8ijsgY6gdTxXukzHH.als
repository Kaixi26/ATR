open main
pred id8ijsgY6gdTxXukzHH_prop9 {
	
  always (all t:Train| eventually (no t.pos and one t.pos':>Entry))
	 
}
pred __repair { id8ijsgY6gdTxXukzHH_prop9 }
check __repair { id8ijsgY6gdTxXukzHH_prop9 <=> prop9o }