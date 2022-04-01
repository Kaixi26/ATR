open main
pred idoBcc9htX8Zg7Da94A_prop12 {
   (all f:File | always some (f &Trash) since eventually f in Trash )
}
pred __repair { idoBcc9htX8Zg7Da94A_prop12 }
check __repair { idoBcc9htX8Zg7Da94A_prop12 <=> prop12o }