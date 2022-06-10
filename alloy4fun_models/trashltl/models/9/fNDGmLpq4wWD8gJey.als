open main
pred idfNDGmLpq4wWD8gJey_prop10 {
  always all f : File {
   (f in Protected implies f in Protected)
   (f not in Protected implies f not in Protected)
  }
  
  
}
pred __repair { idfNDGmLpq4wWD8gJey_prop10 }
check __repair { idfNDGmLpq4wWD8gJey_prop10 <=> prop10o }