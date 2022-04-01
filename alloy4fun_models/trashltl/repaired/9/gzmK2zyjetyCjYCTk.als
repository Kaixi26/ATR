open main
pred idgzmK2zyjetyCjYCTk_prop10 {
	always all p: File | always (once p in Protected implies always p in Protected) 
}
pred __repair { idgzmK2zyjetyCjYCTk_prop10 }
check __repair { idgzmK2zyjetyCjYCTk_prop10 <=> prop10o }