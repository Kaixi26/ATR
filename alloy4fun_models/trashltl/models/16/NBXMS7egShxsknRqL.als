open main
pred idNBXMS7egShxsknRqL_prop17 {
  all f: File |eventually (before f in Trash implies File = File - f)

}
pred __repair { idNBXMS7egShxsknRqL_prop17 }
check __repair { idNBXMS7egShxsknRqL_prop17 <=> prop17o }