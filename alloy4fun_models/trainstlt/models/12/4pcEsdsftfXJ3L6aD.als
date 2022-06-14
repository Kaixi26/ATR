open main
pred id4pcEsdsftfXJ3L6aD_prop13 {
	
	 ( all t:Train | eventually always no t.pos implies  always(no t.pos))
}
pred __repair { id4pcEsdsftfXJ3L6aD_prop13 }
check __repair { id4pcEsdsftfXJ3L6aD_prop13 <=> prop13o }