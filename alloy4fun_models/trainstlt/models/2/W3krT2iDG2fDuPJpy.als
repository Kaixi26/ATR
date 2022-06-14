open main
pred idW3krT2iDG2fDuPJpy_prop3 {
	
	always(all t : Train , p : t.pos | always (t.pos = p))
}
pred __repair { idW3krT2iDG2fDuPJpy_prop3 }
check __repair { idW3krT2iDG2fDuPJpy_prop3 <=> prop3o }