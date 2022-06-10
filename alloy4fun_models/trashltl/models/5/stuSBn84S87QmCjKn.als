open main
pred idstuSBn84S87QmCjKn_prop6 {
  all f: File | f in Trash implies after f in Trash
}
pred __repair { idstuSBn84S87QmCjKn_prop6 }
check __repair { idstuSBn84S87QmCjKn_prop6 <=> prop6o }