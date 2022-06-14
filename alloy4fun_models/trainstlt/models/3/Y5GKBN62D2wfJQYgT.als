open main
pred idY5GKBN62D2wfJQYgT_prop4 {
	
  all t1, t2 : Train | always t1.pos' != t2.pos
}
pred __repair { idY5GKBN62D2wfJQYgT_prop4 }
check __repair { idY5GKBN62D2wfJQYgT_prop4 <=> prop4o }