open main
pred idHTiDkhsqAjdtMxmfo_prop6 {
	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idHTiDkhsqAjdtMxmfo_prop6 }
check __repair { idHTiDkhsqAjdtMxmfo_prop6 <=> prop6o }