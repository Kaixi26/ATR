open main
pred id4ezYNgj5bMy2Cj9s4_prop3 {
	
  always all t: Train | always after t.pos = t.pos
}
pred __repair { id4ezYNgj5bMy2Cj9s4_prop3 }
check __repair { id4ezYNgj5bMy2Cj9s4_prop3 <=> prop3o }