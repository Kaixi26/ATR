open main
pred idBFQjCr4piMzBaqJo2_prop3 {
	
	all t : Train , p : t.pos | always (t.pos = p)
}
pred __repair { idBFQjCr4piMzBaqJo2_prop3 }
check __repair { idBFQjCr4piMzBaqJo2_prop3 <=> prop3o }