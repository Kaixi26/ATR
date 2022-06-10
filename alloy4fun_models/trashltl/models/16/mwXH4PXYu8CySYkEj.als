open main
pred idmwXH4PXYu8CySYkEj_prop17 {
	always all f:File | eventually f in Trash implies after f not in File
}
pred __repair { idmwXH4PXYu8CySYkEj_prop17 }
check __repair { idmwXH4PXYu8CySYkEj_prop17 <=> prop17o }