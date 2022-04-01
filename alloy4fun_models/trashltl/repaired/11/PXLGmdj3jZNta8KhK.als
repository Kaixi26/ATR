open main
pred idPXLGmdj3jZNta8KhK_prop12 {
	some f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
}
pred __repair { idPXLGmdj3jZNta8KhK_prop12 }
check __repair { idPXLGmdj3jZNta8KhK_prop12 <=> prop12o }