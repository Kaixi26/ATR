open main
pred idMifgTPgwE4b4Wmb4i_prop12 {
	eventually all f : File | f not in Trash implies f in Trash'
}
pred __repair { idMifgTPgwE4b4Wmb4i_prop12 }
check __repair { idMifgTPgwE4b4Wmb4i_prop12 <=> prop12o }