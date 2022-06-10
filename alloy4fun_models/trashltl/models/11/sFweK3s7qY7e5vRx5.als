open main
pred idsFweK3s7qY7e5vRx5_prop12 {
	
  	eventually some f:File | f not in Trash implies f in Trash since f in Trash
}
pred __repair { idsFweK3s7qY7e5vRx5_prop12 }
check __repair { idsFweK3s7qY7e5vRx5_prop12 <=> prop12o }