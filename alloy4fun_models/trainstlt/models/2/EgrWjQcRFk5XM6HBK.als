open main
pred idEgrWjQcRFk5XM6HBK_prop3 {
	
	all t : Train | always t.pos in Entry
}
pred __repair { idEgrWjQcRFk5XM6HBK_prop3 }
check __repair { idEgrWjQcRFk5XM6HBK_prop3 <=> prop3o }