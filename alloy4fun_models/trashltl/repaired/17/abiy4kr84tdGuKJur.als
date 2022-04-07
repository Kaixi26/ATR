open main
pred idabiy4kr84tdGuKJur_prop18 {
  
  	always all f:File | f in Trash implies f not in Protected'

}
pred __repair { idabiy4kr84tdGuKJur_prop18 }
check __repair { idabiy4kr84tdGuKJur_prop18 <=> prop18o }