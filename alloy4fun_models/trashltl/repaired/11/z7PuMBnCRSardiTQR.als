open main
pred idz7PuMBnCRSardiTQR_prop12 {
	 eventually (all f:File | eventually (f in Trash implies always f in Trash))
}
pred __repair { idz7PuMBnCRSardiTQR_prop12 }
check __repair { idz7PuMBnCRSardiTQR_prop12 <=> prop12o }