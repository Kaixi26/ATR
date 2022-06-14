open main
pred id9RY8g6z89pHyshrqq_prop9 {
	
	always ( all t:Train | (no t.pos) triggered (t.pos in Entry) )	
}
pred __repair { id9RY8g6z89pHyshrqq_prop9 }
check __repair { id9RY8g6z89pHyshrqq_prop9 <=> prop9o }