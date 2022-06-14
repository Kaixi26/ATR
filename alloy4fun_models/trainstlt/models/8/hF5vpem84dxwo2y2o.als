open main
pred idhF5vpem84dxwo2y2o_prop9 {
	
	always ( all t:Train | eventually (no t.pos until t.pos in Entry))
}
pred __repair { idhF5vpem84dxwo2y2o_prop9 }
check __repair { idhF5vpem84dxwo2y2o_prop9 <=> prop9o }