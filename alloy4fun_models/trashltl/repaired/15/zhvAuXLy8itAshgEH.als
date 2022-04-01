open main
pred idzhvAuXLy8itAshgEH_prop16 {
	 all f:File | f in Protected implies historically f in   Protected
}
pred __repair { idzhvAuXLy8itAshgEH_prop16 }
check __repair { idzhvAuXLy8itAshgEH_prop16 <=> prop16o }