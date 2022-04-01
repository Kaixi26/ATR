open main
pred idsGpfzDwswMukrqTwM_prop5 {
	all f : File | f in File until f not in File
}
pred __repair { idsGpfzDwswMukrqTwM_prop5 }
check __repair { idsGpfzDwswMukrqTwM_prop5 <=> prop5o }