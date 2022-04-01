open main
pred idei3bkG4ybrC7myJ2P_prop10 {
  always all f: File | always f in Protected implies always f in Protected
}
pred __repair { idei3bkG4ybrC7myJ2P_prop10 }
check __repair { idei3bkG4ybrC7myJ2P_prop10 <=> prop10o }