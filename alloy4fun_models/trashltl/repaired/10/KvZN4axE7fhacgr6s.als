open main
pred idKvZN4axE7fhacgr6s_prop11 {
	all f : File | f not in Protected => after always f in Protected
}
pred __repair { idKvZN4axE7fhacgr6s_prop11 }
check __repair { idKvZN4axE7fhacgr6s_prop11 <=> prop11o }