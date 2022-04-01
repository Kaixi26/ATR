open main
pred idTJyP8oLyamikvj6Sm_prop8 {
	always (all f:File| some f.*link  implies eventually  f.*link  in Trash)
}
pred __repair { idTJyP8oLyamikvj6Sm_prop8 }
check __repair { idTJyP8oLyamikvj6Sm_prop8 <=> prop8o }