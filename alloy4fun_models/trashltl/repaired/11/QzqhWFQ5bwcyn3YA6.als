open main
pred idQzqhWFQ5bwcyn3YA6_prop12 {
	 eventually (all f:File | eventually f in Trash implies always f in Trash)
}
pred __repair { idQzqhWFQ5bwcyn3YA6_prop12 }
check __repair { idQzqhWFQ5bwcyn3YA6_prop12 <=> prop12o }