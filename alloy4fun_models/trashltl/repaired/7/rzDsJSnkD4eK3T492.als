open main
pred idrzDsJSnkD4eK3T492_prop8 {
  	always all f,g:File | eventually f->g in link implies f in Trash 
}
pred __repair { idrzDsJSnkD4eK3T492_prop8 }
check __repair { idrzDsJSnkD4eK3T492_prop8 <=> prop8o }