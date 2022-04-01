open main
pred idbZwLTBmrDEC4Qniij_prop19 {
	eventually all f : Protected | f in Trash until f not in Protected
}
pred __repair { idbZwLTBmrDEC4Qniij_prop19 }
check __repair { idbZwLTBmrDEC4Qniij_prop19 <=> prop19o }