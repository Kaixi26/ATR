open main
pred idagEbYBK69Ay8hQ6X9_prop17 {
  all f: File |eventually (always f in Trash implies always f not in File)

}
pred __repair { idagEbYBK69Ay8hQ6X9_prop17 }
check __repair { idagEbYBK69Ay8hQ6X9_prop17 <=> prop17o }