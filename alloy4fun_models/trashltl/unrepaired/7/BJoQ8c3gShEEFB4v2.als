open main
pred idBJoQ8c3gShEEFB4v2_prop8 {

  always all f:File | some f.link implies eventually  f.link in Trash
  
}
pred __repair { idBJoQ8c3gShEEFB4v2_prop8 }
check __repair { idBJoQ8c3gShEEFB4v2_prop8 <=> prop8o }