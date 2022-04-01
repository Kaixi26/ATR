open main
pred idCtvWrnDLEhNqr5Bsx_prop12 {
	always eventually all f : File | f not in Trash implies f in Trash'
}
pred __repair { idCtvWrnDLEhNqr5Bsx_prop12 }
check __repair { idCtvWrnDLEhNqr5Bsx_prop12 <=> prop12o }