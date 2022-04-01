open main
pred idBr2ekJhjmzJd9GdXw_prop1 {
	always( before all f:File | f in Protected )
}
pred __repair { idBr2ekJhjmzJd9GdXw_prop1 }
check __repair { idBr2ekJhjmzJd9GdXw_prop1 <=> prop1o }