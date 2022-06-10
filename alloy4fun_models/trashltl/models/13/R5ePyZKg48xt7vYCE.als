open main
pred idR5ePyZKg48xt7vYCE_prop14 {
	always (all f : Trash' | always (after f not in Protected))
}
pred __repair { idR5ePyZKg48xt7vYCE_prop14 }
check __repair { idR5ePyZKg48xt7vYCE_prop14 <=> prop14o }