open main
pred id4hoHnb6QLiJGNFnWg_prop18 {
	all f: File | always (f not in Protected releases f in Trash)
}
pred __repair { id4hoHnb6QLiJGNFnWg_prop18 }
check __repair { id4hoHnb6QLiJGNFnWg_prop18 <=> prop18o }