open main
pred id8NsAD3sdBGC5cNgjY_prop6 {
    all f : File | always (f in Trash implies always f in Trash)

}
pred __repair { id8NsAD3sdBGC5cNgjY_prop6 }
check __repair { id8NsAD3sdBGC5cNgjY_prop6 <=> prop6o }