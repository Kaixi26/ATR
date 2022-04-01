open main
pred idD43knC8fakMtBqKA4_prop18 {
	always all f:Protected | f not in Protected implies f in Trash
}
pred __repair { idD43knC8fakMtBqKA4_prop18 }
check __repair { idD43knC8fakMtBqKA4_prop18 <=> prop18o }