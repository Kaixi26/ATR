open main
pred iddaMYYTMD4fzhLpMmH_prop8 {
  eventually ( some f1,f2 : File | f1->f2 in link implies f2 in Trash  )
  
}
pred __repair { iddaMYYTMD4fzhLpMmH_prop8 }
check __repair { iddaMYYTMD4fzhLpMmH_prop8 <=> prop8o }