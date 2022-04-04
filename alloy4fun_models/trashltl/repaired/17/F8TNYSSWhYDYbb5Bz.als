open main
pred idF8TNYSSWhYDYbb5Bz_prop18 {
  always (all f : File | f in Trash triggered f in Protected)
}
pred __repair { idF8TNYSSWhYDYbb5Bz_prop18 }
check __repair { idF8TNYSSWhYDYbb5Bz_prop18 <=> prop18o }