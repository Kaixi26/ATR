open main
pred idr3aytxTzdfG33oLoN_prop16 {
  all f:File | f in Protected implies (historically f in Protected)
}
pred __repair { idr3aytxTzdfG33oLoN_prop16 }
check __repair { idr3aytxTzdfG33oLoN_prop16 <=> prop16o }