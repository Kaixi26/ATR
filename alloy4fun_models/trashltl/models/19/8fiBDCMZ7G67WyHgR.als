open main
pred id8fiBDCMZ7G67WyHgR_prop20 {
	always all f : File | f in Trash since f not in Protected 
}
pred __repair { id8fiBDCMZ7G67WyHgR_prop20 }
check __repair { id8fiBDCMZ7G67WyHgR_prop20 <=> prop20o }