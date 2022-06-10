open main
pred idAhK8ajQRkgr844eq7_prop20 {
	always all t : Trash | (t in Trash) since (t in Protected)
}
pred __repair { idAhK8ajQRkgr844eq7_prop20 }
check __repair { idAhK8ajQRkgr844eq7_prop20 <=> prop20o }