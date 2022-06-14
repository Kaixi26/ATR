open main
pred idkiML2bvqv4E9vFDEA_prop5 {
	
	always all t : Train, p : t.pos | (t.pos)' in p.prox || Exit = p.prox
}
pred __repair { idkiML2bvqv4E9vFDEA_prop5 }
check __repair { idkiML2bvqv4E9vFDEA_prop5 <=> prop5o }