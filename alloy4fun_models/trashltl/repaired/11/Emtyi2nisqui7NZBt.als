open main
pred idEmtyi2nisqui7NZBt_prop12 {
  eventually some Trash and all f: File | f in Trash implies always f in Trash
}
pred __repair { idEmtyi2nisqui7NZBt_prop12 }
check __repair { idEmtyi2nisqui7NZBt_prop12 <=> prop12o }