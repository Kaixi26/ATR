open main
pred idxHCQh4SteFzqnWzsz_prop15 {
	(some File) implies (eventually (File in Trash))
}
pred __repair { idxHCQh4SteFzqnWzsz_prop15 }
check __repair { idxHCQh4SteFzqnWzsz_prop15 <=> prop15o }