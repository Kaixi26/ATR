open main
pred idKEPujWnzranBmzoFW_prop12 {
	always (all f:File | eventually f in Trash implies (f not in Trash) releases (f in Trash))
}
pred __repair { idKEPujWnzranBmzoFW_prop12 }
check __repair { idKEPujWnzranBmzoFW_prop12 <=> prop12o }