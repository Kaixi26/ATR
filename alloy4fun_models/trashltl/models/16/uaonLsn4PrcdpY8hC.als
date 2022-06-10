open main
pred iduaonLsn4PrcdpY8hC_prop17 {
  all f: File |always ( f in Trash implies File' = File - f)

}
pred __repair { iduaonLsn4PrcdpY8hC_prop17 }
check __repair { iduaonLsn4PrcdpY8hC_prop17 <=> prop17o }