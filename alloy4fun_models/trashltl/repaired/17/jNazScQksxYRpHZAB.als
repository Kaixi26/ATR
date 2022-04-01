open main
pred idjNazScQksxYRpHZAB_prop18 {
  always all p: Protected | eventually p not in Protected implies eventually p in Trash
}
pred __repair { idjNazScQksxYRpHZAB_prop18 }
check __repair { idjNazScQksxYRpHZAB_prop18 <=> prop18o }