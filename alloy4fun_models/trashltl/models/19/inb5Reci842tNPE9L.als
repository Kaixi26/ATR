open main
pred idinb5Reci842tNPE9L_prop20 {
  always (all  f : File | f not in Protected triggered f in Trash)
}
pred __repair { idinb5Reci842tNPE9L_prop20 }
check __repair { idinb5Reci842tNPE9L_prop20 <=> prop20o }