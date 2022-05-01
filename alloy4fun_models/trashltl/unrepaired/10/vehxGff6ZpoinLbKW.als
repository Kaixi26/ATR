open main
pred idvehxGff6ZpoinLbKW_prop11 {
  after all f:File | f not in Protected implies f in Protected

}
pred __repair { idvehxGff6ZpoinLbKW_prop11 }
check __repair { idvehxGff6ZpoinLbKW_prop11 <=> prop11o }