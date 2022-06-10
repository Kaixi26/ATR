open main
pred idpKoEcY32AWrygDPex_prop6 {
	always all f:File |  f in Trash implies Trash'=Trash+f
}
pred __repair { idpKoEcY32AWrygDPex_prop6 }
check __repair { idpKoEcY32AWrygDPex_prop6 <=> prop6o }