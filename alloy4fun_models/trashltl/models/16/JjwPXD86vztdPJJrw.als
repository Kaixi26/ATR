open main
pred idJjwPXD86vztdPJJrw_prop17 {
  all f: File |always (eventually f in Trash) implies after f not in File

}
pred __repair { idJjwPXD86vztdPJJrw_prop17 }
check __repair { idJjwPXD86vztdPJJrw_prop17 <=> prop17o }