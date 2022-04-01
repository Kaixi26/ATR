open main
pred idGLtxrFwpNBMppweeC_prop8 {
	all f1,f2:File | f1->f2 in link implies eventually f1 in Trash
}
pred __repair { idGLtxrFwpNBMppweeC_prop8 }
check __repair { idGLtxrFwpNBMppweeC_prop8 <=> prop8o }