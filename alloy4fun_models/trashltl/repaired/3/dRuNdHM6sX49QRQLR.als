open main
pred iddRuNdHM6sX49QRQLR_prop4 {
  	some f: File | (f not in Protected) implies eventually f in Trash

}
pred __repair { iddRuNdHM6sX49QRQLR_prop4 }
check __repair { iddRuNdHM6sX49QRQLR_prop4 <=> prop4o }