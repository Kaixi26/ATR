open main
pred idMsJdJknAuudPnL2Mw_prop18 {
  
  	always all f:File | f in Trash implies f not in Protected'

}
pred __repair { idMsJdJknAuudPnL2Mw_prop18 }
check __repair { idMsJdJknAuudPnL2Mw_prop18 <=> prop18o }