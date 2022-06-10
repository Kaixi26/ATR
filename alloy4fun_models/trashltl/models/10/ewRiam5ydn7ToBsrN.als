open main
pred idewRiam5ydn7ToBsrN_prop11 {
	always all f:File | f not in Protected implies Protected' = Protected + f
}
pred __repair { idewRiam5ydn7ToBsrN_prop11 }
check __repair { idewRiam5ydn7ToBsrN_prop11 <=> prop11o }