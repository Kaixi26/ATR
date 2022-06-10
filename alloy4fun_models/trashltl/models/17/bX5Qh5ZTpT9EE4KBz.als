open main
pred idbX5Qh5ZTpT9EE4KBz_prop18 {
  always (all f : Protected | f in Trash triggered f not in Protected)
}
pred __repair { idbX5Qh5ZTpT9EE4KBz_prop18 }
check __repair { idbX5Qh5ZTpT9EE4KBz_prop18 <=> prop18o }