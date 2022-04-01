open main
pred idTrcaDcuFH8bPwdicu_prop6 {
	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idTrcaDcuFH8bPwdicu_prop6 }
check __repair { idTrcaDcuFH8bPwdicu_prop6 <=> prop6o }