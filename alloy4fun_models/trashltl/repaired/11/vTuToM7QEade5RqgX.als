open main
pred idvTuToM7QEade5RqgX_prop12 {
	 eventually (some f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { idvTuToM7QEade5RqgX_prop12 }
check __repair { idvTuToM7QEade5RqgX_prop12 <=> prop12o }