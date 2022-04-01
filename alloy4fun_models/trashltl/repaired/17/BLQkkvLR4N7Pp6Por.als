open main
pred idBLQkkvLR4N7Pp6Por_prop18 {
	always all f : Protected | after (f not in Protected => f in Trash)
}
pred __repair { idBLQkkvLR4N7Pp6Por_prop18 }
check __repair { idBLQkkvLR4N7Pp6Por_prop18 <=> prop18o }