open main
pred idc2KP4fitpQvH9ZJht_prop13 {
	
	always ( all t:Train | no t.pos since  no t.pos)
}
pred __repair { idc2KP4fitpQvH9ZJht_prop13 }
check __repair { idc2KP4fitpQvH9ZJht_prop13 <=> prop13o }