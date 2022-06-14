open main
pred idHoDwegKS9TAmfibt9_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    always (t.pos in Track  implies  t.pos' in t.pos.prox)
  }
}
pred __repair { idHoDwegKS9TAmfibt9_prop5 }
check __repair { idHoDwegKS9TAmfibt9_prop5 <=> prop5o }