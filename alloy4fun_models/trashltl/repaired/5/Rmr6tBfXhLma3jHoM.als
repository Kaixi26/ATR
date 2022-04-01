open main
pred idRmr6tBfXhLma3jHoM_prop6 {
	all f: File | once f in Trash implies always f in Trash
}
pred __repair { idRmr6tBfXhLma3jHoM_prop6 }
check __repair { idRmr6tBfXhLma3jHoM_prop6 <=> prop6o }