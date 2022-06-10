open main
pred idZurSqtJuT6xtLaskf_prop4 {
  	some f: File | f not in Protected implies eventually always f in Trash

}
pred __repair { idZurSqtJuT6xtLaskf_prop4 }
check __repair { idZurSqtJuT6xtLaskf_prop4 <=> prop4o }