open main
pred idfeAqeidonnHemeEiG_prop12 {
  	
  	
  	eventually always all f:File | f in Trash implies always f in Trash' 
  
}
pred __repair { idfeAqeidonnHemeEiG_prop12 }
check __repair { idfeAqeidonnHemeEiG_prop12 <=> prop12o }