open main
pred idz5GxGKxLH3Gritzqd_prop6 {
    all f : File | always (f in Trash implies always f in Trash)

}
pred __repair { idz5GxGKxLH3Gritzqd_prop6 }
check __repair { idz5GxGKxLH3Gritzqd_prop6 <=> prop6o }