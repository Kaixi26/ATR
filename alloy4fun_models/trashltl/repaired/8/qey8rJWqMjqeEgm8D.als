open main
pred idqey8rJWqMjqeEgm8D_prop9 {
  
  always (all p: Protected | always p not in Trash)
}
pred __repair { idqey8rJWqMjqeEgm8D_prop9 }
check __repair { idqey8rJWqMjqeEgm8D_prop9 <=> prop9o }