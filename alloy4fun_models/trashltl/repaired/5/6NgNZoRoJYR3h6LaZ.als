open main
pred id6NgNZoRoJYR3h6LaZ_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { id6NgNZoRoJYR3h6LaZ_prop6 }
check __repair { id6NgNZoRoJYR3h6LaZ_prop6 <=> prop6o }