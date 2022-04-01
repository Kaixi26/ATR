open main
pred ideEqCWswdmWRNxFTP7_prop6 {
	all f : File | f in Trash => always f in Trash
}
pred __repair { ideEqCWswdmWRNxFTP7_prop6 }
check __repair { ideEqCWswdmWRNxFTP7_prop6 <=> prop6o }