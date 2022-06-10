open main
pred idkGqHn4hm76t8kQrXZ_prop6 {
	all f:File | f in Trash triggered (always f in Trash)
}
pred __repair { idkGqHn4hm76t8kQrXZ_prop6 }
check __repair { idkGqHn4hm76t8kQrXZ_prop6 <=> prop6o }