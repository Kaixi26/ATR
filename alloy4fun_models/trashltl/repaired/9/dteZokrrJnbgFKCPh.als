open main
pred iddteZokrrJnbgFKCPh_prop10 {
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { iddteZokrrJnbgFKCPh_prop10 }
check __repair { iddteZokrrJnbgFKCPh_prop10 <=> prop10o }