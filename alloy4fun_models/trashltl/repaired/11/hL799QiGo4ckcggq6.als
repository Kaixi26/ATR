open main
pred idhL799QiGo4ckcggq6_prop12 {
	eventually always all f:File | f not in Trash implies f in Trash'
}
pred __repair { idhL799QiGo4ckcggq6_prop12 }
check __repair { idhL799QiGo4ckcggq6_prop12 <=> prop12o }