open main
pred idngpYDykT5PKDGFAer_prop9 {
  
  always all p: Protected | always p not in Trash 
}
pred __repair { idngpYDykT5PKDGFAer_prop9 }
check __repair { idngpYDykT5PKDGFAer_prop9 <=> prop9o }