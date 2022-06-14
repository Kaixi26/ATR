open main
pred idy3C6f3SDrDcyXfm8D_prop9 {
	
		always ( all t:Train |(some t.pos) and eventually (t.pos in Entry) )
}
pred __repair { idy3C6f3SDrDcyXfm8D_prop9 }
check __repair { idy3C6f3SDrDcyXfm8D_prop9 <=> prop9o }