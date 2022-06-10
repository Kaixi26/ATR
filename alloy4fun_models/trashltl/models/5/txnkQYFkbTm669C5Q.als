open main
pred idtxnkQYFkbTm669C5Q_prop6 {
  all f : File | eventually f in Trash implies always f in Trash 
}
pred __repair { idtxnkQYFkbTm669C5Q_prop6 }
check __repair { idtxnkQYFkbTm669C5Q_prop6 <=> prop6o }