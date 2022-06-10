open main
pred idYHFuo2LNTCugTFvdY_prop8 {
	always (all f:File | some f.link implies eventually f.link in Trash)
}
pred __repair { idYHFuo2LNTCugTFvdY_prop8 }
check __repair { idYHFuo2LNTCugTFvdY_prop8 <=> prop8o }