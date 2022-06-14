open main
pred id758CgPsei3BbcmE6j_prop15 {
	
	all t:Train | one t.pos implies eventually (t.pos)' != t.pos
}
pred __repair { id758CgPsei3BbcmE6j_prop15 }
check __repair { id758CgPsei3BbcmE6j_prop15 <=> prop15o }