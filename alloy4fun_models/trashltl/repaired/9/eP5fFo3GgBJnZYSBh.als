open main
pred ideP5fFo3GgBJnZYSBh_prop10 {
  always all f: File | (eventually f in Protected implies always f in Protected)
  
}
pred __repair { ideP5fFo3GgBJnZYSBh_prop10 }
check __repair { ideP5fFo3GgBJnZYSBh_prop10 <=> prop10o }