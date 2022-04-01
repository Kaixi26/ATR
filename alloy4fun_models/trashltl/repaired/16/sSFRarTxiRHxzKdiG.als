open main
pred idsSFRarTxiRHxzKdiG_prop17 {
	always (all f:File | f in Trash implies after f not in File')
}
pred __repair { idsSFRarTxiRHxzKdiG_prop17 }
check __repair { idsSFRarTxiRHxzKdiG_prop17 <=> prop17o }