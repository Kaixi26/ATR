open main
pred idKvM3RzvtLx8vuYms2_prop8 {
	eventually (some x,y : File | x->y in link implies (x in Trash and y in Trash))
}
pred __repair { idKvM3RzvtLx8vuYms2_prop8 }
check __repair { idKvM3RzvtLx8vuYms2_prop8 <=> prop8o }