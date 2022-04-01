open main
pred idEXBNtqxMn6BzrnDBH_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { idEXBNtqxMn6BzrnDBH_prop20 }
check __repair { idEXBNtqxMn6BzrnDBH_prop20 <=> prop20o }