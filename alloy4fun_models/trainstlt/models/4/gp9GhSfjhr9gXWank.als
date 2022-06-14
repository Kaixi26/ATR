open main
pred idgp9GhSfjhr9gXWank_prop5 {
	
  always all t: Train | t not in Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { idgp9GhSfjhr9gXWank_prop5 }
check __repair { idgp9GhSfjhr9gXWank_prop5 <=> prop5o }