open main
pred idCNR2eoKgyfzd7RE9D_prop20 {
	always some f : File | f in Trash since f not in Protected
}
pred __repair { idCNR2eoKgyfzd7RE9D_prop20 }
check __repair { idCNR2eoKgyfzd7RE9D_prop20 <=> prop20o }