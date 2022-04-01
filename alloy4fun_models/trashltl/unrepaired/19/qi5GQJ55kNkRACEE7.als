open main
pred idqi5GQJ55kNkRACEE7_prop20 {
	always (all f : Trash | f not in Protected since f in Trash)
}
pred __repair { idqi5GQJ55kNkRACEE7_prop20 }
check __repair { idqi5GQJ55kNkRACEE7_prop20 <=> prop20o }