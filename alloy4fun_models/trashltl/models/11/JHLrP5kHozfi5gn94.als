open main
pred idJHLrP5kHozfi5gn94_prop12 {
  eventually some Trash and (always all f: File | f in Trash implies always f in Trash)
}
pred __repair { idJHLrP5kHozfi5gn94_prop12 }
check __repair { idJHLrP5kHozfi5gn94_prop12 <=> prop12o }