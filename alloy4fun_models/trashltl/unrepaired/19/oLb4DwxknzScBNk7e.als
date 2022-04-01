open main
pred idoLb4DwxknzScBNk7e_prop20 {
 	always (all f:File | f in Trash since no (f&Protected) )
}
pred __repair { idoLb4DwxknzScBNk7e_prop20 }
check __repair { idoLb4DwxknzScBNk7e_prop20 <=> prop20o }