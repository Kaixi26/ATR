open main
pred idLEo5KXWH9L5fYbQqA_prop3 {
	
  always all t: Train | always one t.pos implies after t in t.pos
}
pred __repair { idLEo5KXWH9L5fYbQqA_prop3 }
check __repair { idLEo5KXWH9L5fYbQqA_prop3 <=> prop3o }