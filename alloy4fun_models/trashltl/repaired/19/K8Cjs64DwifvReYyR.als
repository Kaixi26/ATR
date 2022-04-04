open main
pred idK8Cjs64DwifvReYyR_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { idK8Cjs64DwifvReYyR_prop20 }
check __repair { idK8Cjs64DwifvReYyR_prop20 <=> prop20o }