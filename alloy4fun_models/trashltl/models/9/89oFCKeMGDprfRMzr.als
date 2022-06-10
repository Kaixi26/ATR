open main
pred id89oFCKeMGDprfRMzr_prop10 {
	always( all f:File | f in Protected implies always f in Protected)
}
pred __repair { id89oFCKeMGDprfRMzr_prop10 }
check __repair { id89oFCKeMGDprfRMzr_prop10 <=> prop10o }