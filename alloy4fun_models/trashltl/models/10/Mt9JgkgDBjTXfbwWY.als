open main
pred idMt9JgkgDBjTXfbwWY_prop11 {
all f : File | f not in Protected implies after f in Protected
}
pred __repair { idMt9JgkgDBjTXfbwWY_prop11 }
check __repair { idMt9JgkgDBjTXfbwWY_prop11 <=> prop11o }