open main
pred id79ruNMCfqJGrwG3Qi_prop4 {
  
 
  some f:File | f not in Trash implies eventually f in Trash
}
pred __repair { id79ruNMCfqJGrwG3Qi_prop4 }
check __repair { id79ruNMCfqJGrwG3Qi_prop4 <=> prop4o }