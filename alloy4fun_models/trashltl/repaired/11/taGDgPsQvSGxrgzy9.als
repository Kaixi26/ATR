open main
pred idtaGDgPsQvSGxrgzy9_prop12 {
  	eventually (some f : File - Trash | f in Trash implies always f in Trash)

}
pred __repair { idtaGDgPsQvSGxrgzy9_prop12 }
check __repair { idtaGDgPsQvSGxrgzy9_prop12 <=> prop12o }