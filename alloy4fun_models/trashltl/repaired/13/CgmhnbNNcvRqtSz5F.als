open main
pred idCgmhnbNNcvRqtSz5F_prop14 {
  all f: Protected | eventually f in Trash implies after f not in Protected

}
pred __repair { idCgmhnbNNcvRqtSz5F_prop14 }
check __repair { idCgmhnbNNcvRqtSz5F_prop14 <=> prop14o }