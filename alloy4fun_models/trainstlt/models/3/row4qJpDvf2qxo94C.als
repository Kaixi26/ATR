open main
pred idrow4qJpDvf2qxo94C_prop4 {
	
	all disj s1, s2 : Signal | s1.pos != s2.pos
}
pred __repair { idrow4qJpDvf2qxo94C_prop4 }
check __repair { idrow4qJpDvf2qxo94C_prop4 <=> prop4o }