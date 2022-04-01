open main
pred idrFL2nXx2oR5FjPh2n_prop12 {
	all f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
}
pred __repair { idrFL2nXx2oR5FjPh2n_prop12 }
check __repair { idrFL2nXx2oR5FjPh2n_prop12 <=> prop12o }