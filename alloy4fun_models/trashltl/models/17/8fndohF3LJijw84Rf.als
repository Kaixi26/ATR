open main
pred id8fndohF3LJijw84Rf_prop18 {
	always all f:File | f in Protected until f not in Trash 
}
pred __repair { id8fndohF3LJijw84Rf_prop18 }
check __repair { id8fndohF3LJijw84Rf_prop18 <=> prop18o }