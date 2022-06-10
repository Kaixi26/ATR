open main
pred iduCuNKLPLF9cq8ZC5z_prop17 {
	always all f : File | f in Trash implies after f not in Trash
}
pred __repair { iduCuNKLPLF9cq8ZC5z_prop17 }
check __repair { iduCuNKLPLF9cq8ZC5z_prop17 <=> prop17o }