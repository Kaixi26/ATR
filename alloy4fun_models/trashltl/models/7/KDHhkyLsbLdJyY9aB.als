open main
pred idKDHhkyLsbLdJyY9aB_prop8 {
  always all l : File.link | eventually l in File.link implies l in Trash 
}
pred __repair { idKDHhkyLsbLdJyY9aB_prop8 }
check __repair { idKDHhkyLsbLdJyY9aB_prop8 <=> prop8o }