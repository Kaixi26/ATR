open main
pred idsJ9NMoRaPwe5xsuXP_prop9 {
  all f: File | always f not in Trash implies eventually f in Protected
}
pred __repair { idsJ9NMoRaPwe5xsuXP_prop9 }
check __repair { idsJ9NMoRaPwe5xsuXP_prop9 <=> prop9o }