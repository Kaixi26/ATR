open main
pred idbRA5uREbPGFEgfRKx_prop8 {
	all f:File | some f.link implies eventually f in Trash
}
pred __repair { idbRA5uREbPGFEgfRKx_prop8 }
check __repair { idbRA5uREbPGFEgfRKx_prop8 <=> prop8o }