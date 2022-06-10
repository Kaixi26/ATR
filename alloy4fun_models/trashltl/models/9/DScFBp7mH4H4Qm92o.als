open main
pred idDScFBp7mH4H4Qm92o_prop10 {
  always all f: File | f in Protected implies always f in Protected
}
pred __repair { idDScFBp7mH4H4Qm92o_prop10 }
check __repair { idDScFBp7mH4H4Qm92o_prop10 <=> prop10o }