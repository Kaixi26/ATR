open main
pred id9phnGdPKFgcb9LPbu_prop17 {
  all f: File | (File' = File - f since eventually f in Trash)

}
pred __repair { id9phnGdPKFgcb9LPbu_prop17 }
check __repair { id9phnGdPKFgcb9LPbu_prop17 <=> prop17o }