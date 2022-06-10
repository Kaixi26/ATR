open main
pred idB2yfNAYWXbfjGGAaY_prop17 {
  all f: File |eventually (before f in Trash implies always f not in File)

}
pred __repair { idB2yfNAYWXbfjGGAaY_prop17 }
check __repair { idB2yfNAYWXbfjGGAaY_prop17 <=> prop17o }