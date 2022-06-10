open main
pred idAKQL6cebx6GxPTqFj_prop5 {
  some f : File | f in Trash implies eventually File' = File - f
}
pred __repair { idAKQL6cebx6GxPTqFj_prop5 }
check __repair { idAKQL6cebx6GxPTqFj_prop5 <=> prop5o }