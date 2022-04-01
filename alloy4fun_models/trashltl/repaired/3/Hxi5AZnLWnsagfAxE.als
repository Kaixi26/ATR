open main
pred idHxi5AZnLWnsagfAxE_prop4 {
  	some f: File | always f not in Protected implies f in Trash

}
pred __repair { idHxi5AZnLWnsagfAxE_prop4 }
check __repair { idHxi5AZnLWnsagfAxE_prop4 <=> prop4o }