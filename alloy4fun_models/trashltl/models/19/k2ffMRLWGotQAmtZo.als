open main
pred idk2ffMRLWGotQAmtZo_prop20 {
	always all f : File | f in Trash since f not in Protected 
}
pred __repair { idk2ffMRLWGotQAmtZo_prop20 }
check __repair { idk2ffMRLWGotQAmtZo_prop20 <=> prop20o }