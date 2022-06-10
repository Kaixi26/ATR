open main
pred idkScqSb224cKjmi7vN_prop12 {
  
  	eventually all f:File | f in Trash implies f in Trash'
  
}
pred __repair { idkScqSb224cKjmi7vN_prop12 }
check __repair { idkScqSb224cKjmi7vN_prop12 <=> prop12o }