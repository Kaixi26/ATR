open main
pred idbG7DdcDXycuGkjZCx_prop17 {
  all f: File |always (eventually f in Trash) implies after File' = File-f

}
pred __repair { idbG7DdcDXycuGkjZCx_prop17 }
check __repair { idbG7DdcDXycuGkjZCx_prop17 <=> prop17o }