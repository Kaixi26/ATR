open main
pred idFPYkGTdx2w7RwKF2L_prop12 {
	eventually always some f:File | f not in Trash implies f in Trash'
}
pred __repair { idFPYkGTdx2w7RwKF2L_prop12 }
check __repair { idFPYkGTdx2w7RwKF2L_prop12 <=> prop12o }