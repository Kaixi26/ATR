open main
pred idTAjBHpTDr6ms8QHq7_prop13 {
	
	always ( all t:Train | eventually always no t.pos implies  always(no t.pos))
}
pred __repair { idTAjBHpTDr6ms8QHq7_prop13 }
check __repair { idTAjBHpTDr6ms8QHq7_prop13 <=> prop13o }