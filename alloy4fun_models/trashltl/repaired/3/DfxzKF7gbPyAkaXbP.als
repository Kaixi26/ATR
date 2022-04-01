open main
pred idDfxzKF7gbPyAkaXbP_prop4 {
 
  some f:File | f not in Trash implies eventually f in Trash
}
pred __repair { idDfxzKF7gbPyAkaXbP_prop4 }
check __repair { idDfxzKF7gbPyAkaXbP_prop4 <=> prop4o }