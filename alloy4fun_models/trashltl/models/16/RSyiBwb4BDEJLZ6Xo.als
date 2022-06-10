open main
pred idRSyiBwb4BDEJLZ6Xo_prop17 {
  all f: File |(always f' not in File since eventually f in Trash)

}
pred __repair { idRSyiBwb4BDEJLZ6Xo_prop17 }
check __repair { idRSyiBwb4BDEJLZ6Xo_prop17 <=> prop17o }