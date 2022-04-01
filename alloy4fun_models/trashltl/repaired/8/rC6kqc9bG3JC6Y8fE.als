open main
pred idrC6kqc9bG3JC6Y8fE_prop9 {
  
  always all p: Protected | always p not in Trash 
}
pred __repair { idrC6kqc9bG3JC6Y8fE_prop9 }
check __repair { idrC6kqc9bG3JC6Y8fE_prop9 <=> prop9o }