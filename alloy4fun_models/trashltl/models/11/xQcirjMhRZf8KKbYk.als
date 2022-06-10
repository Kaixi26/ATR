open main
pred idxQcirjMhRZf8KKbYk_prop12 {
	always all f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idxQcirjMhRZf8KKbYk_prop12 }
check __repair { idxQcirjMhRZf8KKbYk_prop12 <=> prop12o }