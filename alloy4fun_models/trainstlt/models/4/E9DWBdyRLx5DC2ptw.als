open main
pred idE9DWBdyRLx5DC2ptw_prop5 {
	
  always all t: Train | no t.pos & Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { idE9DWBdyRLx5DC2ptw_prop5 }
check __repair { idE9DWBdyRLx5DC2ptw_prop5 <=> prop5o }