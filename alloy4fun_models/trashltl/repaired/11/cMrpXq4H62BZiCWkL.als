open main
pred idcMrpXq4H62BZiCWkL_prop12 {
  eventually all t : Trash | after t in Trash or t not in Trash
}
pred __repair { idcMrpXq4H62BZiCWkL_prop12 }
check __repair { idcMrpXq4H62BZiCWkL_prop12 <=> prop12o }