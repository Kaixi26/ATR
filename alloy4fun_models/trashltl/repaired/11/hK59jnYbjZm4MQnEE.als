open main
pred idhK59jnYbjZm4MQnEE_prop12 {
  	
  	
  	always all f:File | eventually f in Trash implies always f in Trash
  
}
pred __repair { idhK59jnYbjZm4MQnEE_prop12 }
check __repair { idhK59jnYbjZm4MQnEE_prop12 <=> prop12o }