open main
pred idvqc76iRMmM56qrh3o_prop10 {
  all f: File | always f in Protected since f in Protected
}
pred __repair { idvqc76iRMmM56qrh3o_prop10 }
check __repair { idvqc76iRMmM56qrh3o_prop10 <=> prop10o }