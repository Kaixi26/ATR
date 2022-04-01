open main
pred iddDeD3cbiMLr46x4nN_prop10 {
	always (all f:File | f in Protected since f in Protected)
}
pred __repair { iddDeD3cbiMLr46x4nN_prop10 }
check __repair { iddDeD3cbiMLr46x4nN_prop10 <=> prop10o }