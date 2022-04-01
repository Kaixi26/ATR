open main
pred idPiScAnPFphogrC5Rt_prop5 {
	always (all f:File | eventually no f&File)
}
pred __repair { idPiScAnPFphogrC5Rt_prop5 }
check __repair { idPiScAnPFphogrC5Rt_prop5 <=> prop5o }