open main
pred idAEybZA7hbg5fAS5L5_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idAEybZA7hbg5fAS5L5_prop18 }
check __repair { idAEybZA7hbg5fAS5L5_prop18 <=> prop18o }