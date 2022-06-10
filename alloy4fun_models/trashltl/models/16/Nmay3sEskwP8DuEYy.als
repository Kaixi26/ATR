open main
pred idNmay3sEskwP8DuEYy_prop17 {
  all f: File |always ((eventually f in Trash) implies File' = File - f)

}
pred __repair { idNmay3sEskwP8DuEYy_prop17 }
check __repair { idNmay3sEskwP8DuEYy_prop17 <=> prop17o }