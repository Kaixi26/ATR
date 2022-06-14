open main
pred idGQFMy2yH67L7eLz4F_prop5 {
	
	always all t : Train, p : t.pos | (t.pos)' in p.prox || Exit = p.prox
}
pred __repair { idGQFMy2yH67L7eLz4F_prop5 }
check __repair { idGQFMy2yH67L7eLz4F_prop5 <=> prop5o }