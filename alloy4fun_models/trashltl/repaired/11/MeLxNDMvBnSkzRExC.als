open main
pred idMeLxNDMvBnSkzRExC_prop12 {
	always all f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
}
pred __repair { idMeLxNDMvBnSkzRExC_prop12 }
check __repair { idMeLxNDMvBnSkzRExC_prop12 <=> prop12o }