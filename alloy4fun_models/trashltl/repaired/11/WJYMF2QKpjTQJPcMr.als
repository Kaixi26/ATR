open main
pred idWJYMF2QKpjTQJPcMr_prop12 {
	 (some f:File | (eventually f in Trash) implies (always f in Trash))
}
pred __repair { idWJYMF2QKpjTQJPcMr_prop12 }
check __repair { idWJYMF2QKpjTQJPcMr_prop12 <=> prop12o }