open main
pred idjXsdKTZZP7toEjiAf_prop10 {
	always all p: File | always (p in Protected implies always p in Protected) 
}
pred __repair { idjXsdKTZZP7toEjiAf_prop10 }
check __repair { idjXsdKTZZP7toEjiAf_prop10 <=> prop10o }