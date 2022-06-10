open main
pred idC8fwykgcniKQBrybn_prop12 {
  eventually some Trash and always (all t: Trash | always t in Trash)
}
pred __repair { idC8fwykgcniKQBrybn_prop12 }
check __repair { idC8fwykgcniKQBrybn_prop12 <=> prop12o }