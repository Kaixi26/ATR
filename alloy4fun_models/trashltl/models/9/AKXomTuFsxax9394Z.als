open main
pred idAKXomTuFsxax9394Z_prop10 {
	always all f: File | f in Protected implies f' in Protected
}
pred __repair { idAKXomTuFsxax9394Z_prop10 }
check __repair { idAKXomTuFsxax9394Z_prop10 <=> prop10o }