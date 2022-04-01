open main
pred idXwMSGNFsTL28KgBMz_prop12 {
  	
  	
  	eventually always all f:File | f in Trash implies always f in Trash'
  
}
pred __repair { idXwMSGNFsTL28KgBMz_prop12 }
check __repair { idXwMSGNFsTL28KgBMz_prop12 <=> prop12o }