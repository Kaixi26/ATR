open main
pred idvJJyJakom6cfECyKo_prop19 {
	(all f:File| f in Protected until f in Trash)
}
pred __repair { idvJJyJakom6cfECyKo_prop19 }
check __repair { idvJJyJakom6cfECyKo_prop19 <=> prop19o }