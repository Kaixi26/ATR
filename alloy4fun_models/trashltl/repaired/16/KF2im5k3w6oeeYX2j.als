open main
pred idKF2im5k3w6oeeYX2j_prop17 {
  all f: File | once f in Trash implies always f' not in File

}
pred __repair { idKF2im5k3w6oeeYX2j_prop17 }
check __repair { idKF2im5k3w6oeeYX2j_prop17 <=> prop17o }