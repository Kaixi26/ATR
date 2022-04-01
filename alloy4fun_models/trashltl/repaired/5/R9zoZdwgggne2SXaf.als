open main
pred idR9zoZdwgggne2SXaf_prop6 {
	all f:File | f in Trash implies (always f in Trash)
}
pred __repair { idR9zoZdwgggne2SXaf_prop6 }
check __repair { idR9zoZdwgggne2SXaf_prop6 <=> prop6o }