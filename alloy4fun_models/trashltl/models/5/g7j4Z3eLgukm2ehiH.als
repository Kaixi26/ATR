open main
pred idg7j4Z3eLgukm2ehiH_prop6 {
    all f : File | always (f in Trash implies always f in Trash)

}
pred __repair { idg7j4Z3eLgukm2ehiH_prop6 }
check __repair { idg7j4Z3eLgukm2ehiH_prop6 <=> prop6o }