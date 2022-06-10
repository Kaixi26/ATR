open main
pred idmgsodGMiNswrLiAsL_prop12 {
	all f : File-Trash | eventually f in Trash => eventually after  f not in Trash
}
pred __repair { idmgsodGMiNswrLiAsL_prop12 }
check __repair { idmgsodGMiNswrLiAsL_prop12 <=> prop12o }