open main
pred id3r6mBBJnNqtz5Sxmm_prop5 {
	
  always all t: Train | t.prox not in Exit implies t.pos' in t.pos + t.pos.prox
}
pred __repair { id3r6mBBJnNqtz5Sxmm_prop5 }
check __repair { id3r6mBBJnNqtz5Sxmm_prop5 <=> prop5o }