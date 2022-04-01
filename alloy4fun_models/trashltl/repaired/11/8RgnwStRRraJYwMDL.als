open main
pred id8RgnwStRRraJYwMDL_prop12 {
	  	all f : File | (always eventually f in Trash) implies (eventually f not in Trash)
}
pred __repair { id8RgnwStRRraJYwMDL_prop12 }
check __repair { id8RgnwStRRraJYwMDL_prop12 <=> prop12o }