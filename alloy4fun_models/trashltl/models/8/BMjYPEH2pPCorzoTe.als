open main
pred idBMjYPEH2pPCorzoTe_prop9 {
  all f: File | always f not in Trash implies once f in Protected
}
pred __repair { idBMjYPEH2pPCorzoTe_prop9 }
check __repair { idBMjYPEH2pPCorzoTe_prop9 <=> prop9o }