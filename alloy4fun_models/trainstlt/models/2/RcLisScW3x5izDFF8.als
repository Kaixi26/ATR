open main
pred idRcLisScW3x5izDFF8_prop3 {
	
	all t : Train | t.pos = t.pos'
}
pred __repair { idRcLisScW3x5izDFF8_prop3 }
check __repair { idRcLisScW3x5izDFF8_prop3 <=> prop3o }