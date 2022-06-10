open main
pred idEh53ZeLfKrzhzxFXm_prop17 {
  all f: File |always (eventually f in Trash) implies File' = File - f

}
pred __repair { idEh53ZeLfKrzhzxFXm_prop17 }
check __repair { idEh53ZeLfKrzhzxFXm_prop17 <=> prop17o }