open main
pred idNpqKJuQukgqapHv2a_prop15 {
	
	always (some t: Train| (no t.pos  implies eventually some t.pos) or eventually t.pos != t.pos')
}
pred __repair { idNpqKJuQukgqapHv2a_prop15 }
check __repair { idNpqKJuQukgqapHv2a_prop15 <=> prop15o }