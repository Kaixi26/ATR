open main
pred idncLni3a9cCcizng5Y_prop9 {
  all f: File | once f in Protected implies always f not in Trash
}
pred __repair { idncLni3a9cCcizng5Y_prop9 }
check __repair { idncLni3a9cCcizng5Y_prop9 <=> prop9o }