open main
pred idhQ2Mh4MrBdHwLxaYr_prop12 {
	eventually always some f:File | f not in Trash implies f in Trash'
}
pred __repair { idhQ2Mh4MrBdHwLxaYr_prop12 }
check __repair { idhQ2Mh4MrBdHwLxaYr_prop12 <=> prop12o }