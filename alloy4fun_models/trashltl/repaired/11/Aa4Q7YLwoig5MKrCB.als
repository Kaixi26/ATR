open main
pred idAa4Q7YLwoig5MKrCB_prop12 {
  always all f: File | eventually some Trash and f in Trash implies always f in Trash
}
pred __repair { idAa4Q7YLwoig5MKrCB_prop12 }
check __repair { idAa4Q7YLwoig5MKrCB_prop12 <=> prop12o }