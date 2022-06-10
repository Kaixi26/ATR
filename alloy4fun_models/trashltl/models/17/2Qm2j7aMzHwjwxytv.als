open main
pred id2Qm2j7aMzHwjwxytv_prop18 {
	always all f: File | f in Protected and f in Trash implies f not in Protected
}
pred __repair { id2Qm2j7aMzHwjwxytv_prop18 }
check __repair { id2Qm2j7aMzHwjwxytv_prop18 <=> prop18o }