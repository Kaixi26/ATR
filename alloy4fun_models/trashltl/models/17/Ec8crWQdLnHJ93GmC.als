open main
pred idEc8crWQdLnHJ93GmC_prop18 {
	always all f : Protected | f in Trash until f not in Protected
}
pred __repair { idEc8crWQdLnHJ93GmC_prop18 }
check __repair { idEc8crWQdLnHJ93GmC_prop18 <=> prop18o }