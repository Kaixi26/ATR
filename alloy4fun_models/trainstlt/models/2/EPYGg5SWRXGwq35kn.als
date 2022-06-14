open main
pred idEPYGg5SWRXGwq35kn_prop3 {
	
  always all t: Train | always t in t.pos implies after t in t.pos
}
pred __repair { idEPYGg5SWRXGwq35kn_prop3 }
check __repair { idEPYGg5SWRXGwq35kn_prop3 <=> prop3o }