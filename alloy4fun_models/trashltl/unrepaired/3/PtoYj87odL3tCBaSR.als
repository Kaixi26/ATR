open main
pred idPtoYj87odL3tCBaSR_prop4 {
  	some f: File | f not in Protected and eventually f in Trash

}
pred __repair { idPtoYj87odL3tCBaSR_prop4 }
check __repair { idPtoYj87odL3tCBaSR_prop4 <=> prop4o }