open main
pred idnBrqiXabtgbvKCt2k_prop20 {
	always all f : File | f in Trash since f not in Protected 
}
pred __repair { idnBrqiXabtgbvKCt2k_prop20 }
check __repair { idnBrqiXabtgbvKCt2k_prop20 <=> prop20o }