open main
pred idvARibhzcMv226W3S4_prop10 {
  always all f : File | f in Protected implies f  in Protected
  
}
pred __repair { idvARibhzcMv226W3S4_prop10 }
check __repair { idvARibhzcMv226W3S4_prop10 <=> prop10o }