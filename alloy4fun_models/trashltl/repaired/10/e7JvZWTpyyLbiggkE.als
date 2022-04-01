open main
pred ide7JvZWTpyyLbiggkE_prop11 {
	all f : File | always (f not in Protected => f in Protected')
}
pred __repair { ide7JvZWTpyyLbiggkE_prop11 }
check __repair { ide7JvZWTpyyLbiggkE_prop11 <=> prop11o }