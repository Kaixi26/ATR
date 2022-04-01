open main
pred idWKzs6TYHRGQSaffkb_prop6 {
	all f : File | always (f in Trash and after f in Trash)
}
pred __repair { idWKzs6TYHRGQSaffkb_prop6 }
check __repair { idWKzs6TYHRGQSaffkb_prop6 <=> prop6o }