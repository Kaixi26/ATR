open main
pred idCDQZCz3c4CqEz2TWF_prop17 {
  all f: File | always (File' = File - f since eventually f in Trash)

}
pred __repair { idCDQZCz3c4CqEz2TWF_prop17 }
check __repair { idCDQZCz3c4CqEz2TWF_prop17 <=> prop17o }