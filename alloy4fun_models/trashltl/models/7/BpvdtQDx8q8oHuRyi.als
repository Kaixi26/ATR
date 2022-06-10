open main
pred idBpvdtQDx8q8oHuRyi_prop8 {
	eventually all f:File | f.link in Trash
}
pred __repair { idBpvdtQDx8q8oHuRyi_prop8 }
check __repair { idBpvdtQDx8q8oHuRyi_prop8 <=> prop8o }