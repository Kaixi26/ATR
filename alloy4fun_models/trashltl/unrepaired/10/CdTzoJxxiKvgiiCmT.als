open main
pred idCdTzoJxxiKvgiiCmT_prop11 {
	always all f:File | after Protected' = Protected + f
}
pred __repair { idCdTzoJxxiKvgiiCmT_prop11 }
check __repair { idCdTzoJxxiKvgiiCmT_prop11 <=> prop11o }