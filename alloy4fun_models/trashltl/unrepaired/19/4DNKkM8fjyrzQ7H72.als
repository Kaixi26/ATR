open main
pred id4DNKkM8fjyrzQ7H72_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { id4DNKkM8fjyrzQ7H72_prop20 }
check __repair { id4DNKkM8fjyrzQ7H72_prop20 <=> prop20o }