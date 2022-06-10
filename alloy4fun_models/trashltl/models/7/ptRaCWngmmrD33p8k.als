open main
pred idptRaCWngmmrD33p8k_prop8 {
  always(eventually File.link in Trash)
}
pred __repair { idptRaCWngmmrD33p8k_prop8 }
check __repair { idptRaCWngmmrD33p8k_prop8 <=> prop8o }