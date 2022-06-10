open main
pred idTGuMCpS5NJgowxJYA_prop18 {
	always some f:File | f in Trash implies f not in Protected
}
pred __repair { idTGuMCpS5NJgowxJYA_prop18 }
check __repair { idTGuMCpS5NJgowxJYA_prop18 <=> prop18o }