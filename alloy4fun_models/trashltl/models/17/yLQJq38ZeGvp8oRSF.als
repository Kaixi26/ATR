open main
pred idyLQJq38ZeGvp8oRSF_prop18 {
	always all f:File | f not in Protected implies f in Trash
}
pred __repair { idyLQJq38ZeGvp8oRSF_prop18 }
check __repair { idyLQJq38ZeGvp8oRSF_prop18 <=> prop18o }