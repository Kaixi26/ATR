open main
pred iduCoaa22jujYxdr2ra_prop20 {
	always all f : File | f not in Protected since f in Trash
}
pred __repair { iduCoaa22jujYxdr2ra_prop20 }
check __repair { iduCoaa22jujYxdr2ra_prop20 <=> prop20o }