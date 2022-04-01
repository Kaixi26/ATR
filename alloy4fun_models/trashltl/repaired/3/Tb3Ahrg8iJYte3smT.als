open main
pred idTb3Ahrg8iJYte3smT_prop4 {
	always some f : File | eventually f in Trash
}
pred __repair { idTb3Ahrg8iJYte3smT_prop4 }
check __repair { idTb3Ahrg8iJYte3smT_prop4 <=> prop4o }