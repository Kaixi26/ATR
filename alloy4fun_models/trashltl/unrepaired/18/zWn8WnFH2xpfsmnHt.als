open main
pred idzWn8WnFH2xpfsmnHt_prop19 {
	all f : Protected | always (f not in Trash until f in Trash)
}
pred __repair { idzWn8WnFH2xpfsmnHt_prop19 }
check __repair { idzWn8WnFH2xpfsmnHt_prop19 <=> prop19o }