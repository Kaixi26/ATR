open main
pred idCaCTAnpbLXHc96Kia_prop2 {
	
	eventually (all t:Track | Green in t.signal)
}
pred __repair { idCaCTAnpbLXHc96Kia_prop2 }
check __repair { idCaCTAnpbLXHc96Kia_prop2 <=> prop2o }