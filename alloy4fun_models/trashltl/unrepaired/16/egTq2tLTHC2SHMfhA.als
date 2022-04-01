open main
pred idegTq2tLTHC2SHMfhA_prop17 {
  all f: File | once always f in Trash implies always after f not in File

}
pred __repair { idegTq2tLTHC2SHMfhA_prop17 }
check __repair { idegTq2tLTHC2SHMfhA_prop17 <=> prop17o }