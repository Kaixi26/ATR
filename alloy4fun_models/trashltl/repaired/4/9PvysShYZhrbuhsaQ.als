open main
pred id9PvysShYZhrbuhsaQ_prop5 {
	always some f : File | eventually f not in File
}
pred __repair { id9PvysShYZhrbuhsaQ_prop5 }
check __repair { id9PvysShYZhrbuhsaQ_prop5 <=> prop5o }