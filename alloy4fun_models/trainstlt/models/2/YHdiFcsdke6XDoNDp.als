open main
pred idYHdiFcsdke6XDoNDp_prop3 {
	
  always all t: Train | always one t.pos implies after t' in t.pos
}
pred __repair { idYHdiFcsdke6XDoNDp_prop3 }
check __repair { idYHdiFcsdke6XDoNDp_prop3 <=> prop3o }