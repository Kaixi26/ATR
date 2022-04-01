open main
pred idke985bD6fvXAC8JBE_prop11 {
always all f : File | f not in Protected implies after f in Protected'
}
pred __repair { idke985bD6fvXAC8JBE_prop11 }
check __repair { idke985bD6fvXAC8JBE_prop11 <=> prop11o }