open main
pred idNLHyjuvkJAL8pmxhL_prop12 {
	eventually always all f : File | f not in Trash implies f in Trash'
}
pred __repair { idNLHyjuvkJAL8pmxhL_prop12 }
check __repair { idNLHyjuvkJAL8pmxhL_prop12 <=> prop12o }