open main
pred idTjWapK8APvL527kxt_prop8 {
  always( all f: File | eventually f.link in Trash)
}
pred __repair { idTjWapK8APvL527kxt_prop8 }
check __repair { idTjWapK8APvL527kxt_prop8 <=> prop8o }