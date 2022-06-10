open main
pred idQxzuNvMxDBYNeyHKc_prop13 {
  
	always all f:File | f in Trash implies before f not in Trash

}
pred __repair { idQxzuNvMxDBYNeyHKc_prop13 }
check __repair { idQxzuNvMxDBYNeyHKc_prop13 <=> prop13o }