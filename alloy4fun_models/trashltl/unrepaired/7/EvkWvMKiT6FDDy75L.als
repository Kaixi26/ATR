open main
pred idEvkWvMKiT6FDDy75L_prop8 {
	always (all f:File| some f.*link implies eventually  f.*link  in Trash)
}
pred __repair { idEvkWvMKiT6FDDy75L_prop8 }
check __repair { idEvkWvMKiT6FDDy75L_prop8 <=> prop8o }