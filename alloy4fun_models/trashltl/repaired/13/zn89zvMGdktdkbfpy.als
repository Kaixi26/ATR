open main
pred idzn89zvMGdktdkbfpy_prop14 {
	always ((some Protected & Trash) implies (Protected & Trash not in Protected'))
}
pred __repair { idzn89zvMGdktdkbfpy_prop14 }
check __repair { idzn89zvMGdktdkbfpy_prop14 <=> prop14o }