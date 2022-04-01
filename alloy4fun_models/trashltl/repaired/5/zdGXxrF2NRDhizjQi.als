open main
pred idzdGXxrF2NRDhizjQi_prop6 {
	all f: File | f in Trash implies always f in Trash
}
pred __repair { idzdGXxrF2NRDhizjQi_prop6 }
check __repair { idzdGXxrF2NRDhizjQi_prop6 <=> prop6o }