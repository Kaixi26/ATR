open main
pred idMewytaRm4ywtAvvgd_prop14 {
	always(all f:File | f in Protected&Trash implies after (f in Trash-Protected))
}
pred __repair { idMewytaRm4ywtAvvgd_prop14 }
check __repair { idMewytaRm4ywtAvvgd_prop14 <=> prop14o }