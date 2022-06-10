open main
pred idSZHzpZKNTwudo4i5w_prop10 {
  always all f : File {
   (f in Protected implies f in Protected)
   (f not in Protected implies f not in Protected)
  }
  
  
}
pred __repair { idSZHzpZKNTwudo4i5w_prop10 }
check __repair { idSZHzpZKNTwudo4i5w_prop10 <=> prop10o }