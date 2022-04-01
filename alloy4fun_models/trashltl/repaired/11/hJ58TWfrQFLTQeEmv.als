open main
pred idhJ58TWfrQFLTQeEmv_prop12 {
	 eventually (some f:File | (eventually f in Trash) implies always (f in Trash))
}
pred __repair { idhJ58TWfrQFLTQeEmv_prop12 }
check __repair { idhJ58TWfrQFLTQeEmv_prop12 <=> prop12o }