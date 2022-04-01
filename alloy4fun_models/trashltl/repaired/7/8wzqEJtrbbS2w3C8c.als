open main
pred id8wzqEJtrbbS2w3C8c_prop8 {
	all f : File | (some f.link) implies (eventually f in Trash)
}
pred __repair { id8wzqEJtrbbS2w3C8c_prop8 }
check __repair { id8wzqEJtrbbS2w3C8c_prop8 <=> prop8o }