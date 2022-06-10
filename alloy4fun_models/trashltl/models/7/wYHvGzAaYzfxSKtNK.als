open main
pred idwYHvGzAaYzfxSKtNK_prop8 {
	all f1:File , f2:File | f1.link = f2 implies eventually f2 in Trash
}
pred __repair { idwYHvGzAaYzfxSKtNK_prop8 }
check __repair { idwYHvGzAaYzfxSKtNK_prop8 <=> prop8o }