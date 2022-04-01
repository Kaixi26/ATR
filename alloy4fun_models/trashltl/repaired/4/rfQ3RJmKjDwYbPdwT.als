open main
pred idrfQ3RJmKjDwYbPdwT_prop5 {
   eventually some f:File | File' = File - f
}
pred __repair { idrfQ3RJmKjDwYbPdwT_prop5 }
check __repair { idrfQ3RJmKjDwYbPdwT_prop5 <=> prop5o }