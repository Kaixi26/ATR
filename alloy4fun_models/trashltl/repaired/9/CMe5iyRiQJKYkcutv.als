open main
pred idCMe5iyRiQJKYkcutv_prop10 {
  always all f : File {
   (f in Protected implies f in Protected)
   (f not in Protected implies f not in Protected)
  }
  
  
}
pred __repair { idCMe5iyRiQJKYkcutv_prop10 }
check __repair { idCMe5iyRiQJKYkcutv_prop10 <=> prop10o }