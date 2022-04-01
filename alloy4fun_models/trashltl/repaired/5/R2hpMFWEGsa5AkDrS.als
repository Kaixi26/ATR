open main
pred idR2hpMFWEGsa5AkDrS_prop6 {
	all f : File | always (f in Trash => after f in Trash)
}
pred __repair { idR2hpMFWEGsa5AkDrS_prop6 }
check __repair { idR2hpMFWEGsa5AkDrS_prop6 <=> prop6o }