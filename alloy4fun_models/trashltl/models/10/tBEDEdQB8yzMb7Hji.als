open main
pred idtBEDEdQB8yzMb7Hji_prop11 {
	always all f:File | after f in Protected
}
pred __repair { idtBEDEdQB8yzMb7Hji_prop11 }
check __repair { idtBEDEdQB8yzMb7Hji_prop11 <=> prop11o }