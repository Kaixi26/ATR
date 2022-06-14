open main
pred idY77cyAiexxdyyDDpR_prop15 {
	
	always eventually (some t:pos.Track | (t.pos)' != t.pos)
}
pred __repair { idY77cyAiexxdyyDDpR_prop15 }
check __repair { idY77cyAiexxdyyDDpR_prop15 <=> prop15o }