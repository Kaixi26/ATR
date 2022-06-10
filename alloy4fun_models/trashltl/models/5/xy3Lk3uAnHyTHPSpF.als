open main
pred idxy3Lk3uAnHyTHPSpF_prop6 {
	some f: File | f in Trash implies always (f in Trash) 
}
pred __repair { idxy3Lk3uAnHyTHPSpF_prop6 }
check __repair { idxy3Lk3uAnHyTHPSpF_prop6 <=> prop6o }