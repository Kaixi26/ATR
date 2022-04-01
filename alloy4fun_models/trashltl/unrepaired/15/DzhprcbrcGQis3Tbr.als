open main
pred idDzhprcbrcGQis3Tbr_prop16 {
	all f: File | always f in Protected since f in Protected
}
pred __repair { idDzhprcbrcGQis3Tbr_prop16 }
check __repair { idDzhprcbrcGQis3Tbr_prop16 <=> prop16o }