open main
pred idhiyJLGuHEoHBPsFR8_prop3 {
	
 	always pos = pos and (always all t : (Train - pos.Track) | t.pos not in Track implies always t.pos not in Track)
}
pred __repair { idhiyJLGuHEoHBPsFR8_prop3 }
check __repair { idhiyJLGuHEoHBPsFR8_prop3 <=> prop3o }