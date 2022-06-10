open main
pred idDxEyQKAQZpWYg4HuP_prop12 {
  
  	eventually all f:File | f in Trash implies f in Trash'
  
}
pred __repair { idDxEyQKAQZpWYg4HuP_prop12 }
check __repair { idDxEyQKAQZpWYg4HuP_prop12 <=> prop12o }