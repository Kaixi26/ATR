open main
pred idWZS5J5u39jueBpBiX_prop10 {
	always all p: Protected | always (after p in Protected) 
}
pred __repair { idWZS5J5u39jueBpBiX_prop10 }
check __repair { idWZS5J5u39jueBpBiX_prop10 <=> prop10o }