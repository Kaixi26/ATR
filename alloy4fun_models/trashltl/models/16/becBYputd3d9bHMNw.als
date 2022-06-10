open main
pred idbecBYputd3d9bHMNw_prop17 {
  all f: File |once f in Trash implies always f' not in File and f' not in Trash and f' not in Protected

}
pred __repair { idbecBYputd3d9bHMNw_prop17 }
check __repair { idbecBYputd3d9bHMNw_prop17 <=> prop17o }