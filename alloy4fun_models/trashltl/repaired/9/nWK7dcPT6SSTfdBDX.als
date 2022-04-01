open main
pred idnWK7dcPT6SSTfdBDX_prop10 {
	all f:File | f in Protected implies always (f in Protected)
}
pred __repair { idnWK7dcPT6SSTfdBDX_prop10 }
check __repair { idnWK7dcPT6SSTfdBDX_prop10 <=> prop10o }