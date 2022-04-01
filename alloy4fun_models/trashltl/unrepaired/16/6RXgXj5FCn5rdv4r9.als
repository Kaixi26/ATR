open main
pred id6RXgXj5FCn5rdv4r9_prop17 {
  all f: File |always (eventually f in Trash) implies File' = File-f

}
pred __repair { id6RXgXj5FCn5rdv4r9_prop17 }
check __repair { id6RXgXj5FCn5rdv4r9_prop17 <=> prop17o }