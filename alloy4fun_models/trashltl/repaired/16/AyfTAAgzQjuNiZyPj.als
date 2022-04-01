open main
pred idAyfTAAgzQjuNiZyPj_prop17 {
	always all f:File | f not in Trash and eventually f in Trash implies f not in File
}
pred __repair { idAyfTAAgzQjuNiZyPj_prop17 }
check __repair { idAyfTAAgzQjuNiZyPj_prop17 <=> prop17o }