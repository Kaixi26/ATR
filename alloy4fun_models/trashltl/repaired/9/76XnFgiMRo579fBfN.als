open main
pred id76XnFgiMRo579fBfN_prop10 {
  always all f: File | once f in Protected implies always f in Protected
}
pred __repair { id76XnFgiMRo579fBfN_prop10 }
check __repair { id76XnFgiMRo579fBfN_prop10 <=> prop10o }