open main
pred idv3vXGQ6FCKkxE4o4y_prop10 {
	always (all f:File | always (f in Protected implies f in Protected))
}
pred __repair { idv3vXGQ6FCKkxE4o4y_prop10 }
check __repair { idv3vXGQ6FCKkxE4o4y_prop10 <=> prop10o }