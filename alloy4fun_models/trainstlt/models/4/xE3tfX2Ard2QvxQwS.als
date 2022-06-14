open main
pred idxE3tfX2Ard2QvxQwS_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox  )
  }
}
pred __repair { idxE3tfX2Ard2QvxQwS_prop5 }
check __repair { idxE3tfX2Ard2QvxQwS_prop5 <=> prop5o }