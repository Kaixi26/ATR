open main
pred idEwXabmSfX988Z4hk6_prop17 {
	always all f : File | f in Trash implies f not in File
}
pred __repair { idEwXabmSfX988Z4hk6_prop17 }
check __repair { idEwXabmSfX988Z4hk6_prop17 <=> prop17o }