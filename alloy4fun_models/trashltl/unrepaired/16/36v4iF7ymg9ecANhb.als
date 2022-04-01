open main
pred id36v4iF7ymg9ecANhb_prop17 {
  all f: File |eventually (always f in Trash implies File' = File - f)

}
pred __repair { id36v4iF7ymg9ecANhb_prop17 }
check __repair { id36v4iF7ymg9ecANhb_prop17 <=> prop17o }