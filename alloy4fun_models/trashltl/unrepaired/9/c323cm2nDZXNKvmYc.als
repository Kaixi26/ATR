open main
pred idc323cm2nDZXNKvmYc_prop10 {
	always all f:File | f in Protected implies  f in Protected'
}
pred __repair { idc323cm2nDZXNKvmYc_prop10 }
check __repair { idc323cm2nDZXNKvmYc_prop10 <=> prop10o }