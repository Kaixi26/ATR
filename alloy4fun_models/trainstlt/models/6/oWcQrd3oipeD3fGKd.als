open main
pred idoWcQrd3oipeD3fGKd_prop7 {
	
		always all t : Train | eventually t.pos != t.pos'
}
pred __repair { idoWcQrd3oipeD3fGKd_prop7 }
check __repair { idoWcQrd3oipeD3fGKd_prop7 <=> prop7o }