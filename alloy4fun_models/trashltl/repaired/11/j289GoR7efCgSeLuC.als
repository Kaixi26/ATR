open main
pred idj289GoR7efCgSeLuC_prop12 {
	 eventually (some f:File | eventually (f in Trash implies always (f in Trash)))
}
pred __repair { idj289GoR7efCgSeLuC_prop12 }
check __repair { idj289GoR7efCgSeLuC_prop12 <=> prop12o }