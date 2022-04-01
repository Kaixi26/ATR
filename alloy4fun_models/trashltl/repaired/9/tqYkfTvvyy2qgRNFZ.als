open main
pred idtqYkfTvvyy2qgRNFZ_prop10 {
	always (all f:File | f in Protected implies always (f in Protected))
}
pred __repair { idtqYkfTvvyy2qgRNFZ_prop10 }
check __repair { idtqYkfTvvyy2qgRNFZ_prop10 <=> prop10o }