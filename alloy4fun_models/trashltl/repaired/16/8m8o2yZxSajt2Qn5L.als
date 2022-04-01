open main
pred id8m8o2yZxSajt2Qn5L_prop17 {
  all f: File | always f in Trash implies after f not in File

}
pred __repair { id8m8o2yZxSajt2Qn5L_prop17 }
check __repair { id8m8o2yZxSajt2Qn5L_prop17 <=> prop17o }