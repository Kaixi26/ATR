open main
pred id5iccYPC27nNiGEMYn_prop20 {
  always all f: File | f in Trash since f not in Protected
}
pred __repair { id5iccYPC27nNiGEMYn_prop20 }
check __repair { id5iccYPC27nNiGEMYn_prop20 <=> prop20o }