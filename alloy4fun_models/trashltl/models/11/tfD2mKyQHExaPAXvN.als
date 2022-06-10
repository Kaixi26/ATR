open main
pred idtfD2mKyQHExaPAXvN_prop12 {
	eventually all f:File | eventually f in Trash implies f in Trash
}
pred __repair { idtfD2mKyQHExaPAXvN_prop12 }
check __repair { idtfD2mKyQHExaPAXvN_prop12 <=> prop12o }