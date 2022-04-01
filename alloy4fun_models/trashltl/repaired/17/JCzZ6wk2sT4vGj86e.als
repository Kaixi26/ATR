open main
pred idJCzZ6wk2sT4vGj86e_prop18 {
  
  	always all f:Protected | f in Trash implies f not in Protected'

}
pred __repair { idJCzZ6wk2sT4vGj86e_prop18 }
check __repair { idJCzZ6wk2sT4vGj86e_prop18 <=> prop18o }