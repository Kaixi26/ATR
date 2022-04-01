open main
pred id3zeDXov5MCGgBx76y_prop18 {
  always all p: Protected | p in Trash triggered p not in Protected
}
pred __repair { id3zeDXov5MCGgBx76y_prop18 }
check __repair { id3zeDXov5MCGgBx76y_prop18 <=> prop18o }