open main
pred ide8x2p6KPtSxrBATMr_prop12 {
	always all f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { ide8x2p6KPtSxrBATMr_prop12 }
check __repair { ide8x2p6KPtSxrBATMr_prop12 <=> prop12o }