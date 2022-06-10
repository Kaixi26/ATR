open main
pred id7LrK2TJZ4koLP6czA_prop17 {
  all f: File |(always File' = File - f since eventually f in Trash)

}
pred __repair { id7LrK2TJZ4koLP6czA_prop17 }
check __repair { id7LrK2TJZ4koLP6czA_prop17 <=> prop17o }