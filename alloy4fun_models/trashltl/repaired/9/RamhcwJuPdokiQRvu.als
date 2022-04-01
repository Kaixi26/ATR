open main
pred idRamhcwJuPdokiQRvu_prop10 {
	always all f:File | f in Protected implies always f in Protected'
}
pred __repair { idRamhcwJuPdokiQRvu_prop10 }
check __repair { idRamhcwJuPdokiQRvu_prop10 <=> prop10o }