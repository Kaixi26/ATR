open main
pred idCbgvSGqraspKM49tL_prop12 {
	some f:File | eventually f in Trash implies after f in Trash
}
pred __repair { idCbgvSGqraspKM49tL_prop12 }
check __repair { idCbgvSGqraspKM49tL_prop12 <=> prop12o }