open main
pred idZSvu8cJLxnj8DBPd8_prop11 {
  all f: File | f not in Protected implies f in Protected' 

}
pred __repair { idZSvu8cJLxnj8DBPd8_prop11 }
check __repair { idZSvu8cJLxnj8DBPd8_prop11 <=> prop11o }