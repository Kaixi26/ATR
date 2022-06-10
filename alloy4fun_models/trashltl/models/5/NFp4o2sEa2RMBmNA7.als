open main
pred idNFp4o2sEa2RMBmNA7_prop6 {
	all f: File | always( f in Trash implies always f in Trash)
}
pred __repair { idNFp4o2sEa2RMBmNA7_prop6 }
check __repair { idNFp4o2sEa2RMBmNA7_prop6 <=> prop6o }