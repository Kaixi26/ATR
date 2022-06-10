open main
pred idLspevonRq6xsfYjBR_prop12 {
	always all f:File | eventually f in Trash implies (f in Trash until f not in Trash)
}
pred __repair { idLspevonRq6xsfYjBR_prop12 }
check __repair { idLspevonRq6xsfYjBR_prop12 <=> prop12o }