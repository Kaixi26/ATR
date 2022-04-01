open main
pred idKSDoGBcjFzNrdQmnL_prop12 {
	eventually (all f:File | f in Trash implies (always f in Trash))
}
pred __repair { idKSDoGBcjFzNrdQmnL_prop12 }
check __repair { idKSDoGBcjFzNrdQmnL_prop12 <=> prop12o }