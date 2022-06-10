open main
pred id5ARiCeiTvtSba9gn4_prop11 {
	all f:File-Protected | after f in Protected
}
pred __repair { id5ARiCeiTvtSba9gn4_prop11 }
check __repair { id5ARiCeiTvtSba9gn4_prop11 <=> prop11o }