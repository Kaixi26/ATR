open main
pred id8PXGBSXFqdcbX5vSw_prop12 {
	all f : File | eventually f in Trash iff eventually f not in Trash
}
pred __repair { id8PXGBSXFqdcbX5vSw_prop12 }
check __repair { id8PXGBSXFqdcbX5vSw_prop12 <=> prop12o }