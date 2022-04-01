open main
pred idkYWaPdq4Mv2b7ZgzX_prop6 {
  all f : File | once f in Trash implies always f in Trash
}
pred __repair { idkYWaPdq4Mv2b7ZgzX_prop6 }
check __repair { idkYWaPdq4Mv2b7ZgzX_prop6 <=> prop6o }