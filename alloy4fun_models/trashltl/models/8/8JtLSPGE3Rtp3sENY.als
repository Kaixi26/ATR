open main
pred id8JtLSPGE3Rtp3sENY_prop9 {
	all f: File | always(f in Protected implies always f not in Trash)
}
pred __repair { id8JtLSPGE3Rtp3sENY_prop9 }
check __repair { id8JtLSPGE3Rtp3sENY_prop9 <=> prop9o }