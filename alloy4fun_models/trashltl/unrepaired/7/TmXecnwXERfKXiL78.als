open main
pred idTmXecnwXERfKXiL78_prop8 {
  always all f: File | some f.link implies eventually f.link in Trash
}
pred __repair { idTmXecnwXERfKXiL78_prop8 }
check __repair { idTmXecnwXERfKXiL78_prop8 <=> prop8o }