open main
pred iddNRJLqZ2XHpagPXhL_prop11 {
  	
	eventually all f:File | f not in Protected implies f in Protected  
}
pred __repair { iddNRJLqZ2XHpagPXhL_prop11 }
check __repair { iddNRJLqZ2XHpagPXhL_prop11 <=> prop11o }