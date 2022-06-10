open main
pred idhszrntuGzvRQ4Ltrf_prop19 {
	all f : Protected | f in Trash and f not in Protected until f in Protected
}
pred __repair { idhszrntuGzvRQ4Ltrf_prop19 }
check __repair { idhszrntuGzvRQ4Ltrf_prop19 <=> prop19o }