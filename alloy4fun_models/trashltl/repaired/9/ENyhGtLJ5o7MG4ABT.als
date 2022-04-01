open main
pred idENyhGtLJ5o7MG4ABT_prop10 {
	
  always all f:File | f in Protected implies f in Protected
}
pred __repair { idENyhGtLJ5o7MG4ABT_prop10 }
check __repair { idENyhGtLJ5o7MG4ABT_prop10 <=> prop10o }