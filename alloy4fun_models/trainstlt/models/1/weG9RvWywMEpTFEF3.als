open main
pred idweG9RvWywMEpTFEF3_prop2 {
	
  always all s: Signal | eventually s in Green
}
pred __repair { idweG9RvWywMEpTFEF3_prop2 }
check __repair { idweG9RvWywMEpTFEF3_prop2 <=> prop2o }