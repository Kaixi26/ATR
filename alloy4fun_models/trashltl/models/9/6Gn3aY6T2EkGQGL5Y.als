open main
pred id6Gn3aY6T2EkGQGL5Y_prop10 {
	all f:File | always (f in Protected implies always f in Protected)
}
pred __repair { id6Gn3aY6T2EkGQGL5Y_prop10 }
check __repair { id6Gn3aY6T2EkGQGL5Y_prop10 <=> prop10o }