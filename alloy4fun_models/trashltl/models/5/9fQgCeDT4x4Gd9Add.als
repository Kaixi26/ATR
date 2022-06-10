open main
pred id9fQgCeDT4x4Gd9Add_prop6 {
	all f: File | always( f in Trash implies always f in Trash and no f.link)
}
pred __repair { id9fQgCeDT4x4Gd9Add_prop6 }
check __repair { id9fQgCeDT4x4Gd9Add_prop6 <=> prop6o }