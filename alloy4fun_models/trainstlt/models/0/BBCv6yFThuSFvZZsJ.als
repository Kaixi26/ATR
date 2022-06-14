open main
pred idBBCv6yFThuSFvZZsJ_prop1 {
	
	all t:Track | once t.signal != Green
}
pred __repair { idBBCv6yFThuSFvZZsJ_prop1 }
check __repair { idBBCv6yFThuSFvZZsJ_prop1 <=> prop1o }