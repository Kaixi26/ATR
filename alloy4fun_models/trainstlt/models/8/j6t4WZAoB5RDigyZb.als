open main
pred idj6t4WZAoB5RDigyZb_prop9 {
	
	always ( all t:Train | historically no t.pos and eventually t.pos in Entry )	
}
pred __repair { idj6t4WZAoB5RDigyZb_prop9 }
check __repair { idj6t4WZAoB5RDigyZb_prop9 <=> prop9o }