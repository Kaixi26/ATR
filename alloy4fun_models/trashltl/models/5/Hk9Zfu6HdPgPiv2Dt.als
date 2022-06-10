open main
pred idHk9Zfu6HdPgPiv2Dt_prop6 {
	all f : File | f in Trash implies always f in Trash
}
pred __repair { idHk9Zfu6HdPgPiv2Dt_prop6 }
check __repair { idHk9Zfu6HdPgPiv2Dt_prop6 <=> prop6o }