open main
pred idTbvGBEeKzyoogzadd_prop12 {
	always all f : File | eventually f in Trash => eventually f in Trash
}
pred __repair { idTbvGBEeKzyoogzadd_prop12 }
check __repair { idTbvGBEeKzyoogzadd_prop12 <=> prop12o }