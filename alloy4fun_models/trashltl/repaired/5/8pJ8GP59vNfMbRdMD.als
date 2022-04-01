open main
pred id8pJ8GP59vNfMbRdMD_prop6 {
	all f : File | f in Trash implies always f in Trash'
}
pred __repair { id8pJ8GP59vNfMbRdMD_prop6 }
check __repair { id8pJ8GP59vNfMbRdMD_prop6 <=> prop6o }