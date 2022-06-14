open main
pred idDdCdPGhgJbThTxi9n_prop5 {
	
	
	all t : Train | t.pos' != t.pos
}
pred __repair { idDdCdPGhgJbThTxi9n_prop5 }
check __repair { idDdCdPGhgJbThTxi9n_prop5 <=> prop5o }