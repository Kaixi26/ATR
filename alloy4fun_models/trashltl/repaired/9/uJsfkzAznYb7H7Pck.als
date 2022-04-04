open main
pred iduJsfkzAznYb7H7Pck_prop10 {
  always all f: File | f in Protected since f in Protected
}
pred __repair { iduJsfkzAznYb7H7Pck_prop10 }
check __repair { iduJsfkzAznYb7H7Pck_prop10 <=> prop10o }