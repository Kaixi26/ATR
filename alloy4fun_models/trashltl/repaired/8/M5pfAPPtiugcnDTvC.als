open main
pred idM5pfAPPtiugcnDTvC_prop9 {
  always no Protected & Trash 
  always all p: Protected | always p not in Trash 
}
pred __repair { idM5pfAPPtiugcnDTvC_prop9 }
check __repair { idM5pfAPPtiugcnDTvC_prop9 <=> prop9o }