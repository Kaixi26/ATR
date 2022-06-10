open main
pred idmzeWk2succAoNC9Gr_prop4 {
  	some f: File | (f not in Protected) implies eventually f in Trash

}
pred __repair { idmzeWk2succAoNC9Gr_prop4 }
check __repair { idmzeWk2succAoNC9Gr_prop4 <=> prop4o }