open main
pred idx9D5JLxy88jFwHjmt_prop9 {
	
	always ( all t:Train | no t.pos implies eventually (t.pos in Entry) )
}
pred __repair { idx9D5JLxy88jFwHjmt_prop9 }
check __repair { idx9D5JLxy88jFwHjmt_prop9 <=> prop9o }