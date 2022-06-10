open main
pred idqKqtSCNN9Ea45MArz_prop20 {
	always all f : File | f not in Protected since f in Trash
}
pred __repair { idqKqtSCNN9Ea45MArz_prop20 }
check __repair { idqKqtSCNN9Ea45MArz_prop20 <=> prop20o }