open main
pred idXJcW9yN9zLxHezCes_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idXJcW9yN9zLxHezCes_prop5 }
check __repair { idXJcW9yN9zLxHezCes_prop5 <=> prop5o }