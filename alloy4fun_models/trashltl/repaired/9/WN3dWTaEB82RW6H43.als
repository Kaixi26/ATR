open main
pred idWN3dWTaEB82RW6H43_prop10 {
	always all f:Protected | always f in Protected
}
pred __repair { idWN3dWTaEB82RW6H43_prop10 }
check __repair { idWN3dWTaEB82RW6H43_prop10 <=> prop10o }