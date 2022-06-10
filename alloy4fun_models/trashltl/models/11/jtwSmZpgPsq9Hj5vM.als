open main
pred idjtwSmZpgPsq9Hj5vM_prop12 {
	all f : File | eventually f in Trash => eventually f not in Trash
}
pred __repair { idjtwSmZpgPsq9Hj5vM_prop12 }
check __repair { idjtwSmZpgPsq9Hj5vM_prop12 <=> prop12o }