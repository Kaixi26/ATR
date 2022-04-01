open main
pred idREmKkFiPJWmQJbzX8_prop18 {
	all f : File | always (f in Trash' => f not in Protected')
}
pred __repair { idREmKkFiPJWmQJbzX8_prop18 }
check __repair { idREmKkFiPJWmQJbzX8_prop18 <=> prop18o }