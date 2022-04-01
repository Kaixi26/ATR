open main
pred idRc36H3qfECr3vzBcj_prop12 {
	eventually some f:File | always f not in Trash implies f in Trash'
}
pred __repair { idRc36H3qfECr3vzBcj_prop12 }
check __repair { idRc36H3qfECr3vzBcj_prop12 <=> prop12o }