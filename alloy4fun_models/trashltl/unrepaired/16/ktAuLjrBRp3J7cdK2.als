open main
pred idktAuLjrBRp3J7cdK2_prop17 {
  all f: File | always eventually f in Trash implies always after f not in File

}
pred __repair { idktAuLjrBRp3J7cdK2_prop17 }
check __repair { idktAuLjrBRp3J7cdK2_prop17 <=> prop17o }