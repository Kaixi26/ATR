open main
pred idafbgGFbSHDtr24NzN_prop6 {
	all f: File | always( f in Trash implies always f in Trash)
}
pred __repair { idafbgGFbSHDtr24NzN_prop6 }
check __repair { idafbgGFbSHDtr24NzN_prop6 <=> prop6o }