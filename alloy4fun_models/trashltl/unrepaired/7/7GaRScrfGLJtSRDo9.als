open main
pred id7GaRScrfGLJtSRDo9_prop8 {
	always (all f,f2:File | f->f2 in link implies eventually (f2 in Trash))
}
pred __repair { id7GaRScrfGLJtSRDo9_prop8 }
check __repair { id7GaRScrfGLJtSRDo9_prop8 <=> prop8o }