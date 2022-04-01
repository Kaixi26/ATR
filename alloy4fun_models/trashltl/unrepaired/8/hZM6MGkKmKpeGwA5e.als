open main
pred idhZM6MGkKmKpeGwA5e_prop9 {
  all f: File | always f not in Trash implies always f in Protected
}
pred __repair { idhZM6MGkKmKpeGwA5e_prop9 }
check __repair { idhZM6MGkKmKpeGwA5e_prop9 <=> prop9o }