open main
pred idqc8g8JxxRi35MTvGX_prop12 {
  	
  	
  	always all f:File | f in Trash implies always f in Trash'
  
}
pred __repair { idqc8g8JxxRi35MTvGX_prop12 }
check __repair { idqc8g8JxxRi35MTvGX_prop12 <=> prop12o }