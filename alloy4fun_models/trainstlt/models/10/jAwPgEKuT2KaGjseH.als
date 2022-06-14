open main
pred idjAwPgEKuT2KaGjseH_prop11 {
	
	always (all t:pos.Track | once (t.pos in Entry))
}
pred __repair { idjAwPgEKuT2KaGjseH_prop11 }
check __repair { idjAwPgEKuT2KaGjseH_prop11 <=> prop11o }