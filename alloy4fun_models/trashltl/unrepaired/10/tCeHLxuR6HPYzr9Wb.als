open main
pred idtCeHLxuR6HPYzr9Wb_prop11 {
  all f: File | f not in Protected implies f' in Protected

}
pred __repair { idtCeHLxuR6HPYzr9Wb_prop11 }
check __repair { idtCeHLxuR6HPYzr9Wb_prop11 <=> prop11o }