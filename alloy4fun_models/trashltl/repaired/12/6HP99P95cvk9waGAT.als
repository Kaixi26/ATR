open main
pred id6HP99P95cvk9waGAT_prop13 {
	all f: File | always (f in Trash implies before f not in Trash)
}
pred __repair { id6HP99P95cvk9waGAT_prop13 }
check __repair { id6HP99P95cvk9waGAT_prop13 <=> prop13o }