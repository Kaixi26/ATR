open main
pred idSzc8pTYbHakTX9n6c_prop11 {
  all f:File | f not in Protected implies after f in Protected

}
pred __repair { idSzc8pTYbHakTX9n6c_prop11 }
check __repair { idSzc8pTYbHakTX9n6c_prop11 <=> prop11o }