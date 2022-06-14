open main
pred idX3ZzWDsLN7pnHzT56_prop11 {
	
	always (all t:pos.Track | once t.pos in Entry)
}
pred __repair { idX3ZzWDsLN7pnHzT56_prop11 }
check __repair { idX3ZzWDsLN7pnHzT56_prop11 <=> prop11o }