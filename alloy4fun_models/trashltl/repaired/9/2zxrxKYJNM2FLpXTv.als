open main
pred id2zxrxKYJNM2FLpXTv_prop10 {
  always all f : File | f in Protected implies f  in Protected
  
}
pred __repair { id2zxrxKYJNM2FLpXTv_prop10 }
check __repair { id2zxrxKYJNM2FLpXTv_prop10 <=> prop10o }