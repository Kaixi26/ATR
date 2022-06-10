open main
pred ide22GKrjBtS5PfopQc_prop14 {
	all f : (Trash & Protected) | after no (Trash & Protected) 
}
pred __repair { ide22GKrjBtS5PfopQc_prop14 }
check __repair { ide22GKrjBtS5PfopQc_prop14 <=> prop14o }