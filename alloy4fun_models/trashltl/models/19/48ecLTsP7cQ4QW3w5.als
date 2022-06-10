open main
pred id48ecLTsP7cQ4QW3w5_prop20 {
	always all f : File | f not in Protected since f in Trash  
}
pred __repair { id48ecLTsP7cQ4QW3w5_prop20 }
check __repair { id48ecLTsP7cQ4QW3w5_prop20 <=> prop20o }