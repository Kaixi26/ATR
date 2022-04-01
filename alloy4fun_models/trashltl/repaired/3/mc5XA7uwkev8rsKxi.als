open main
pred idmc5XA7uwkev8rsKxi_prop4 {
  	some f: File | eventually always f in Trash

}
pred __repair { idmc5XA7uwkev8rsKxi_prop4 }
check __repair { idmc5XA7uwkev8rsKxi_prop4 <=> prop4o }