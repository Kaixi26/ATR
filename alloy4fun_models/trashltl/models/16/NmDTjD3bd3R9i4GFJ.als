open main
pred idNmDTjD3bd3R9i4GFJ_prop17 {
  all f: File |always (eventually f in Trash implies always f' not in File)

}
pred __repair { idNmDTjD3bd3R9i4GFJ_prop17 }
check __repair { idNmDTjD3bd3R9i4GFJ_prop17 <=> prop17o }