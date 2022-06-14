open main
pred idqT5Proi28HkXL3ZGs_prop5 {
	
	always (all t:pos.Track | (t.pos)' in t.pos + t.pos.prox or (t.pos in Exit and (t.pos)' in t.pos))
}
pred __repair { idqT5Proi28HkXL3ZGs_prop5 }
check __repair { idqT5Proi28HkXL3ZGs_prop5 <=> prop5o }