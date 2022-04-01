open main
pred ide3tMaocwsNA9KC5c4_prop6 {
	all f : File | always (f in Trash implies always f in Trash and f not in Protected)
}
pred __repair { ide3tMaocwsNA9KC5c4_prop6 }
check __repair { ide3tMaocwsNA9KC5c4_prop6 <=> prop6o }