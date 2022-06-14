open main
pred idJ7G5QfqnM99Qp5aCC_prop5 {
	
  all t: Train | after t.pos in t.pos + t.pos.prox
}
pred __repair { idJ7G5QfqnM99Qp5aCC_prop5 }
check __repair { idJ7G5QfqnM99Qp5aCC_prop5 <=> prop5o }