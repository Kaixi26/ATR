open main
pred id2Mte9pJrMZkF6b5fe_prop10 {
	all f: File | f in Protected implies f' in Protected
}
pred __repair { id2Mte9pJrMZkF6b5fe_prop10 }
check __repair { id2Mte9pJrMZkF6b5fe_prop10 <=> prop10o }