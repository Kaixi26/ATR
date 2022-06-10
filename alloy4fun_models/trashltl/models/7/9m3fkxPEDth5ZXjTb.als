open main
pred id9m3fkxPEDth5ZXjTb_prop8 {
	eventually all f:File | f in link.f implies f in Trash
}
pred __repair { id9m3fkxPEDth5ZXjTb_prop8 }
check __repair { id9m3fkxPEDth5ZXjTb_prop8 <=> prop8o }