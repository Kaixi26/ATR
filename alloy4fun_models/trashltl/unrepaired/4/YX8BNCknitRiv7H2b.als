open main
pred idYX8BNCknitRiv7H2b_prop5 {
  some f: File | no Trash and eventually f in Trash
}
pred __repair { idYX8BNCknitRiv7H2b_prop5 }
check __repair { idYX8BNCknitRiv7H2b_prop5 <=> prop5o }