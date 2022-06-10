open main
pred idhpamFvvjWvcFdLbyH_prop12 {
  always all f: File | f in Trash releases f not in Trash
}
pred __repair { idhpamFvvjWvcFdLbyH_prop12 }
check __repair { idhpamFvvjWvcFdLbyH_prop12 <=> prop12o }