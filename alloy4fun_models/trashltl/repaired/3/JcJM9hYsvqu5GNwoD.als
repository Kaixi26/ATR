open main
pred idJcJM9hYsvqu5GNwoD_prop4 {
  	some f: File | always( eventually f in Trash implies always f in Trash)

}
pred __repair { idJcJM9hYsvqu5GNwoD_prop4 }
check __repair { idJcJM9hYsvqu5GNwoD_prop4 <=> prop4o }