open main
pred idAa3SpbFrhNjWKYECh_prop5 {
  always some f : Trash | eventually f not in File
}
pred __repair { idAa3SpbFrhNjWKYECh_prop5 }
check __repair { idAa3SpbFrhNjWKYECh_prop5 <=> prop5o }