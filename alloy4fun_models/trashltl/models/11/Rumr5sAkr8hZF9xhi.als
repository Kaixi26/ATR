open main
pred idRumr5sAkr8hZF9xhi_prop12 {
	always some f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idRumr5sAkr8hZF9xhi_prop12 }
check __repair { idRumr5sAkr8hZF9xhi_prop12 <=> prop12o }