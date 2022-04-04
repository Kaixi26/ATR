open main
pred idBhXXHiYhAyDeF2gvv_prop19 {
	always (all f:File| f in Protected until f in Trash)
}
pred __repair { idBhXXHiYhAyDeF2gvv_prop19 }
check __repair { idBhXXHiYhAyDeF2gvv_prop19 <=> prop19o }