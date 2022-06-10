open main
pred idadFi4qq7TgNhcj3g4_prop12 {
	eventually some f : Trash | after eventually f not in Trash or f in Trash
}
pred __repair { idadFi4qq7TgNhcj3g4_prop12 }
check __repair { idadFi4qq7TgNhcj3g4_prop12 <=> prop12o }