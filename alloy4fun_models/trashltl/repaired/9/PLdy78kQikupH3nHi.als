open main
pred idPLdy78kQikupH3nHi_prop10 {
  all f: File | once f in Protected implies always f in Protected
}
pred __repair { idPLdy78kQikupH3nHi_prop10 }
check __repair { idPLdy78kQikupH3nHi_prop10 <=> prop10o }