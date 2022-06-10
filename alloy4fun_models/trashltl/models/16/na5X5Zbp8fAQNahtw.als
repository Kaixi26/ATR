open main
pred idna5X5Zbp8fAQNahtw_prop17 {
  all f: File |always ((eventually f in Trash) implies File' = File - f)

}
pred __repair { idna5X5Zbp8fAQNahtw_prop17 }
check __repair { idna5X5Zbp8fAQNahtw_prop17 <=> prop17o }