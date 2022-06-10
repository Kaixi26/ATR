open main
pred idxQZ5p8X4SDzywjecB_prop8 {
	all l : link.File | eventually l in Trash
}
pred __repair { idxQZ5p8X4SDzywjecB_prop8 }
check __repair { idxQZ5p8X4SDzywjecB_prop8 <=> prop8o }