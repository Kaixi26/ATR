open main
pred idsSXgEB6wKPtbq4dEp_prop10 {
  always all f: File | always (f in Protected implies always f in Protected)
}
pred __repair { idsSXgEB6wKPtbq4dEp_prop10 }
check __repair { idsSXgEB6wKPtbq4dEp_prop10 <=> prop10o }