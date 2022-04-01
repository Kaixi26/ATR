open main
pred idz4d9b5Au7MANzZmzx_prop4 {
  	some f: File | eventually (always f in Trash) since f not in Protected

}
pred __repair { idz4d9b5Au7MANzZmzx_prop4 }
check __repair { idz4d9b5Au7MANzZmzx_prop4 <=> prop4o }