open main
pred idGMAtGrioWi3y8YFKz_prop1 {
	
	all t:Track | t.signal not in Green
}
pred __repair { idGMAtGrioWi3y8YFKz_prop1 }
check __repair { idGMAtGrioWi3y8YFKz_prop1 <=> prop1o }