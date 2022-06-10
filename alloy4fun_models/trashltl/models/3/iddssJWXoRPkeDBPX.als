open main
pred ididdssJWXoRPkeDBPX_prop4 {
  	some f: File | eventually always f in Trash since f not in Protected

}
pred __repair { ididdssJWXoRPkeDBPX_prop4 }
check __repair { ididdssJWXoRPkeDBPX_prop4 <=> prop4o }