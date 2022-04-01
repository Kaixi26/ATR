open main
pred idHodSqRYc2N6TvJvzv_prop18 {
	all f : File | f in Protected until f in Trash
}
pred __repair { idHodSqRYc2N6TvJvzv_prop18 }
check __repair { idHodSqRYc2N6TvJvzv_prop18 <=> prop18o }