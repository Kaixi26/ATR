open main
pred idwR9JzAPEPJL6h7YbF_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idwR9JzAPEPJL6h7YbF_prop18 }
check __repair { idwR9JzAPEPJL6h7YbF_prop18 <=> prop18o }