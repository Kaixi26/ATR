open main
pred idT2djWLuQodsFzbhv7_prop12 {
	always some f : File | eventually f in Trash => after eventually f not in Trash
}
pred __repair { idT2djWLuQodsFzbhv7_prop12 }
check __repair { idT2djWLuQodsFzbhv7_prop12 <=> prop12o }