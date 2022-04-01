open main
pred idCZdvJjoAKf7bMskv8_prop12 {
	all f : File | eventually f in Trash => always (eventually f not in Trash)
}
pred __repair { idCZdvJjoAKf7bMskv8_prop12 }
check __repair { idCZdvJjoAKf7bMskv8_prop12 <=> prop12o }