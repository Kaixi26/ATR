open main
pred idB4T8ci8nEiikCCCDZ_prop10 {
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { idB4T8ci8nEiikCCCDZ_prop10 }
check __repair { idB4T8ci8nEiikCCCDZ_prop10 <=> prop10o }