open main
pred iduGhdyCPZqoQYjtk2g_prop6 {
	always ( some f : File | f in Trash implies always f in Trash)
}
pred __repair { iduGhdyCPZqoQYjtk2g_prop6 }
check __repair { iduGhdyCPZqoQYjtk2g_prop6 <=> prop6o }