open main
pred idEWkivqWEA78e7hZzJ_prop10 {
  always all f : File | f not in Protected implies f not in Protected
  
}
pred __repair { idEWkivqWEA78e7hZzJ_prop10 }
check __repair { idEWkivqWEA78e7hZzJ_prop10 <=> prop10o }