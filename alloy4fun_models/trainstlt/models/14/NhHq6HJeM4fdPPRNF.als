open main
pred idNhHq6HJeM4fdPPRNF_prop15 {
	
	always eventually (some t:Train | (t.pos)' != t.pos)
}
pred __repair { idNhHq6HJeM4fdPPRNF_prop15 }
check __repair { idNhHq6HJeM4fdPPRNF_prop15 <=> prop15o }