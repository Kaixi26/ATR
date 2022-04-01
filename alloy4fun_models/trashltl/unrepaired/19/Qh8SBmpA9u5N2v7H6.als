open main
pred idQh8SBmpA9u5N2v7H6_prop20 {
	always (all f : Trash | f not in Protected since f in Trash)
}
pred __repair { idQh8SBmpA9u5N2v7H6_prop20 }
check __repair { idQh8SBmpA9u5N2v7H6_prop20 <=> prop20o }