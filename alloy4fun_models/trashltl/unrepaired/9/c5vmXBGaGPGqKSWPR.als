open main
pred idc5vmXBGaGPGqKSWPR_prop10 {
  	all f:Protected | always f in Protected
}
pred __repair { idc5vmXBGaGPGqKSWPR_prop10 }
check __repair { idc5vmXBGaGPGqKSWPR_prop10 <=> prop10o }