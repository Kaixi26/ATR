open main
pred idkwNi58SGbu9f9BogJ_prop7 {
	
	all t : Train | eventually t.pos in Entry
}
pred __repair { idkwNi58SGbu9f9BogJ_prop7 }
check __repair { idkwNi58SGbu9f9BogJ_prop7 <=> prop7o }