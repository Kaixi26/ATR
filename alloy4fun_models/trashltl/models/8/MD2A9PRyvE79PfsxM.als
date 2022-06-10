open main
pred idMD2A9PRyvE79PfsxM_prop9 {
  all f: File | always f in Protected implies eventually f not in Trash
}
pred __repair { idMD2A9PRyvE79PfsxM_prop9 }
check __repair { idMD2A9PRyvE79PfsxM_prop9 <=> prop9o }