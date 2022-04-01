open main
pred idwFYFXCnPpHcmnqffH_prop4 {
 
  some f:File | eventually f in Trash
}
pred __repair { idwFYFXCnPpHcmnqffH_prop4 }
check __repair { idwFYFXCnPpHcmnqffH_prop4 <=> prop4o }