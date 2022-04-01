open main
pred id8LB8dF8g85LjQpCGh_prop12 {
  
  	eventually all f:File | f in Trash implies always f in Trash'
  
}
pred __repair { id8LB8dF8g85LjQpCGh_prop12 }
check __repair { id8LB8dF8g85LjQpCGh_prop12 <=> prop12o }