open main
pred idRpxo7eosoJ43N6xAC_prop11 {
	
	always (all t:pos.Track | once t.pos in Entry) 
}
pred __repair { idRpxo7eosoJ43N6xAC_prop11 }
check __repair { idRpxo7eosoJ43N6xAC_prop11 <=> prop11o }