open main
pred idwQ7Zn2W9fLLBNuihb_prop5 {
	
	always all t : Train, p : t.pos | (t.pos)' in p.prox || Exit in p.prox
}
pred __repair { idwQ7Zn2W9fLLBNuihb_prop5 }
check __repair { idwQ7Zn2W9fLLBNuihb_prop5 <=> prop5o }