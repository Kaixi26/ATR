open main
pred ideQFz47B6fREc9wSAH_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { ideQFz47B6fREc9wSAH_prop18 }
check __repair { ideQFz47B6fREc9wSAH_prop18 <=> prop18o }