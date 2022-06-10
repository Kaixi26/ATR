open main
pred idoBBAfr2MSnqdk2su3_prop12 {
	 eventually (all f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { idoBBAfr2MSnqdk2su3_prop12 }
check __repair { idoBBAfr2MSnqdk2su3_prop12 <=> prop12o }