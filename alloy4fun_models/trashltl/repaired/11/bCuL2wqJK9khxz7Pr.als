open main
pred idbCuL2wqJK9khxz7Pr_prop12 {
  	
  	
  	eventually always all f:File | f in Trash implies always f in Trash' 
  
}
pred __repair { idbCuL2wqJK9khxz7Pr_prop12 }
check __repair { idbCuL2wqJK9khxz7Pr_prop12 <=> prop12o }