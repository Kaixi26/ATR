open main
pred idSNq8qgcimnjLzfkEk_prop14 {
	always (some (Protected & Trash) implies ((Protected & Trash) not in Protected'))
}
pred __repair { idSNq8qgcimnjLzfkEk_prop14 }
check __repair { idSNq8qgcimnjLzfkEk_prop14 <=> prop14o }