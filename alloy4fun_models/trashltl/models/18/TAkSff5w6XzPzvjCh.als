open main
pred idTAkSff5w6XzPzvjCh_prop19 {
	eventually (all f:File | f in Protected implies f in Protected&Trash)
}
pred __repair { idTAkSff5w6XzPzvjCh_prop19 }
check __repair { idTAkSff5w6XzPzvjCh_prop19 <=> prop19o }