open main
pred idbyvG5CaofCHawKSKH_prop9 {
  always no Protected & Trash 
  always all p: Protected | always p not in Trash 
}
pred __repair { idbyvG5CaofCHawKSKH_prop9 }
check __repair { idbyvG5CaofCHawKSKH_prop9 <=> prop9o }