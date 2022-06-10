open main
pred idRkvoggWsJEhwBzG9f_prop12 {
  always all f: File | f in Trash releases f not in Trash
}
pred __repair { idRkvoggWsJEhwBzG9f_prop12 }
check __repair { idRkvoggWsJEhwBzG9f_prop12 <=> prop12o }