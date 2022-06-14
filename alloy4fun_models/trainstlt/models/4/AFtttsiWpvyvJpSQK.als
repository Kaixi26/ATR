open main
pred idAFtttsiWpvyvJpSQK_prop5 {
	
  always all t: Train | t.pos' in t.pos + t.pos.prox
}
pred __repair { idAFtttsiWpvyvJpSQK_prop5 }
check __repair { idAFtttsiWpvyvJpSQK_prop5 <=> prop5o }