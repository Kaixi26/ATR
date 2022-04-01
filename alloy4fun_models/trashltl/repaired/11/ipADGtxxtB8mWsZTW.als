open main
pred idipADGtxxtB8mWsZTW_prop12 {
  	
  	
  	always  all f:File | eventually f in Trash implies always f in Trash'
  
}
pred __repair { idipADGtxxtB8mWsZTW_prop12 }
check __repair { idipADGtxxtB8mWsZTW_prop12 <=> prop12o }