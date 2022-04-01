open main
pred idKyJ6s2hNnrzkfoHWa_prop12 {
	always some f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
}
pred __repair { idKyJ6s2hNnrzkfoHWa_prop12 }
check __repair { idKyJ6s2hNnrzkfoHWa_prop12 <=> prop12o }