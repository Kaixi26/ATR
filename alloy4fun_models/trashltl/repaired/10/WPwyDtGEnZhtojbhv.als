open main
pred idWPwyDtGEnZhtojbhv_prop11 {
  all f: File | always (f not in Protected implies f' in Protected)

}
pred __repair { idWPwyDtGEnZhtojbhv_prop11 }
check __repair { idWPwyDtGEnZhtojbhv_prop11 <=> prop11o }