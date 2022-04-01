open main
pred idqb5jZvoc7BTNDhwx7_prop12 {
  eventually some f : File | f in Trash => after (eventually f not in Trash or f in Trash)
}
pred __repair { idqb5jZvoc7BTNDhwx7_prop12 }
check __repair { idqb5jZvoc7BTNDhwx7_prop12 <=> prop12o }