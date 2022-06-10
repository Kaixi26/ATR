open main
pred idWouhheSHfFqxGA2WG_prop10 {
  always all f : File {
   (f in Protected implies f in Protected)
  }
  
  
}
pred __repair { idWouhheSHfFqxGA2WG_prop10 }
check __repair { idWouhheSHfFqxGA2WG_prop10 <=> prop10o }