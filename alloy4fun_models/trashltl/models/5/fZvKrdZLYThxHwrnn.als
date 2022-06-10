open main
pred idfZvKrdZLYThxHwrnn_prop6 {
    all f : File |  (f in Trash implies always f in Trash)

}
pred __repair { idfZvKrdZLYThxHwrnn_prop6 }
check __repair { idfZvKrdZLYThxHwrnn_prop6 <=> prop6o }