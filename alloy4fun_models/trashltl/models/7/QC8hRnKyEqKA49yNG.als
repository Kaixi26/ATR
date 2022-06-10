open main
pred idQC8hRnKyEqKA49yNG_prop8 {
	 all f:File| some f.^link implies (eventually f+f.^link in Trash)
}
pred __repair { idQC8hRnKyEqKA49yNG_prop8 }
check __repair { idQC8hRnKyEqKA49yNG_prop8 <=> prop8o }