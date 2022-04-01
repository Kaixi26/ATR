open main
pred idQHrPvq32KXJ89NsjM_prop17 {
  all f: File | always f in Trash implies always after f not in File

}
pred __repair { idQHrPvq32KXJ89NsjM_prop17 }
check __repair { idQHrPvq32KXJ89NsjM_prop17 <=> prop17o }