open main
pred idAZne5Qktha3d5NEqj_prop7 {
	
	all t : Train | always (eventually t.pos not in Entry + Exit)
}
pred __repair { idAZne5Qktha3d5NEqj_prop7 }
check __repair { idAZne5Qktha3d5NEqj_prop7 <=> prop7o }