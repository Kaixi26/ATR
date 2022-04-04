open main
pred id9mjZoauPBfWC78wtC_prop10 {
	always (all f:File | after f in Protected)
}
pred __repair { id9mjZoauPBfWC78wtC_prop10 }
check __repair { id9mjZoauPBfWC78wtC_prop10 <=> prop10o }