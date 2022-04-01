open main
pred idSf4uc8gXRxwtv6pZ2_prop4 {
 
  always some f:File | eventually f in Trash
}
pred __repair { idSf4uc8gXRxwtv6pZ2_prop4 }
check __repair { idSf4uc8gXRxwtv6pZ2_prop4 <=> prop4o }