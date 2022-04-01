open main
pred idicXDpWFnkSg9s7pC7_prop8 {
	eventually all f1,f2 : File | f1 -> f2 in link implies f1 in Trash 
}
pred __repair { idicXDpWFnkSg9s7pC7_prop8 }
check __repair { idicXDpWFnkSg9s7pC7_prop8 <=> prop8o }