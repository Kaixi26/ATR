open main
pred idswtnekqXM4JjrXbXW_prop4 {
  	some f: File | f not in Protected implies eventually always f in Trash

}
pred __repair { idswtnekqXM4JjrXbXW_prop4 }
check __repair { idswtnekqXM4JjrXbXW_prop4 <=> prop4o }